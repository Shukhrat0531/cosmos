import 'package:cosmos/pages/authentiaction/logic/data/repository/repositry.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../services/error_massege.dart';
import '../../../../services/prefens_services.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthReposotory reposotory;
  final PreferencesService prefs;
  AuthBloc(this.reposotory, this.prefs) : super(AuthInitial()) {
    on<RegisterUser>((event, emit) async {
      emit(RegisterLoading());
      try {
        await reposotory.registerRequest(event.phone, event.name, event.surname,
            event.patronymic, event.year_of_birth,event.gender,event.promo_code! ,event.term_and_condition );
        emit(RegisterSuccess());
      } on DioError catch (e) {
        emit(RegisterFailed(e.message));
      }
    });

    on<LoginUser>((event, emit) async {
      emit(LoginLoading());
      try {
        await reposotory.loginRequest(event.phone);
        emit(LoginSuccess());
      } on DioError catch (e) {
        print('${e.response}');
        emit(LoginFailed(getErrorMessage(e)));
      }
    });

   
    on<SendSms>((event, emit) async {
      emit(SmsLoading());
      try {
        String? token =
            await reposotory.smsRequest(event.phone, event.code, event.smsFor);
        if (token == null) {
          emit(SmsFailed(null));
        } else {
          prefs.setTokenKey(token);
          emit(SmsSuccess());
          
        }
      } on DioError catch (e) {
        emit(SmsFailed( e.message));
      }
    });
  }
}
