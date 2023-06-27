



import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'menu_models.dart';
import 'menu_repository.dart';

@Injectable()
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuRepository repository;

  MenuBloc(this.repository) : super(MenuLoading()) {
    on<GetMenuInfo>((event, emit) async {
      emit(MenuLoading());
      try {
        final profile = await repository.getProfile();
        final helps = await repository.getHelpInfo();
        emit(MenuSuccess(profile, helps));
      } on DioException catch (e) {
        // emit(MenuFailure((e)));
        print(e.message);
      }
    });
  }
}

abstract class MenuState {}

abstract class MenuEvent {}

class GetMenuInfo extends MenuEvent {}

class MenuLoading extends MenuState {}

class MenuSuccess extends MenuState {
  final ProfileModel profile;
  final List<HelpModel> helpList;

  MenuSuccess(this.profile, this.helpList);
}

class MenuFailure extends MenuState {
  final String? message;
  MenuFailure(this.message);
}




