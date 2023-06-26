import 'package:cosmos/pages/home/ar_details/ar_model.dart';
import 'package:cosmos/pages/home/game_detailist/game_model.dart';
import 'package:cosmos/pages/home/game_detailist/game_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class GameBloc extends Bloc<GameEvent,GameState>{
  final GameRepository repository;

  GameBloc(this.repository):super(GameInitial()){
    on<GameLoaded>((event, emit) async{
      emit(GameLoading());
      try{
        List<Game> games = await repository.getGames(event.id);
        emit(GameSecces(games));
      }on DioException catch(e){
        print(e.message);
      }

    });
  }

}





abstract class GameEvent{}
class GameLoaded extends GameEvent{
  final int id;

  GameLoaded(this.id);
}




abstract class GameState {}

class GameInitial extends GameState {}
class GameLoading extends GameState {}

class GameSecces extends GameState {
  final List<Game> games;

  GameSecces(this.games);
}

class GameFailure extends GameState {}
