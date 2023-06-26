





import 'package:cosmos/pages/home/ar_details/ar_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ar_repository.dart';

class ArendaBloc extends Bloc<ArendaEvent, ArendaState> {
  final ArendaRepository repository;

  ArendaBloc(this.repository) : super(PlasInitial()) {
    on<PlasLoaded>((event, emit) async {
      emit(PlasLoading());
      try {
        List<Arend> games = await repository.getGames(event.id);
        emit(PlasSecces(games));
      } on DioException catch (e) {
        print(e.message);
      }
    });
  }
}

abstract class ArendaEvent {}

class PlasLoaded extends ArendaEvent {
  final int id;

  PlasLoaded(this.id);
}

abstract class ArendaState {}

class PlasInitial extends ArendaState {}

class PlasLoading extends ArendaState {}

class PlasSecces extends ArendaState {
  final List<Arend> arends;

  PlasSecces(this.arends);
}

class PlasFailure extends ArendaState {}
