


import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Определение событий
abstract class FavoriteEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddToFavorites extends FavoriteEvent {
  final int itemId;

  AddToFavorites(this.itemId);

  @override
  List<Object> get props => [itemId];
}

class RemoveFromFavorites extends FavoriteEvent {
  final int itemId;

  RemoveFromFavorites(this.itemId);

  @override
  List<Object> get props => [itemId];
}

// Определение состояния
class FavoriteState extends Equatable {
  final Set<int> favoriteIds;

  FavoriteState({required this.favoriteIds});

  @override
  List<Object> get props => [favoriteIds];
}

// Определение BLoC
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteState(favoriteIds: Set<int>()));

  @override
  Stream<FavoriteState> mapEventToState(FavoriteEvent event) async* {
    if (event is AddToFavorites) {
      final updatedSet = Set<int>.from(state.favoriteIds);
      updatedSet.add(event.itemId);
      yield FavoriteState(favoriteIds: updatedSet);
    } else if (event is RemoveFromFavorites) {
      final updatedSet = Set<int>.from(state.favoriteIds);
      updatedSet.remove(event.itemId);
      yield FavoriteState(favoriteIds: updatedSet);
    }
  }
}
