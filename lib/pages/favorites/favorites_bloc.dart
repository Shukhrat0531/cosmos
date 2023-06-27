import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeartBloc extends Bloc<HeartEvent, Map<int, bool>> {
  HeartBloc() : super({});

  @override
  Stream<Map<int, bool>> mapEventToState(HeartEvent event) async* {
    if (event is ToggleHeartEvent) {
      Map<int, bool> currentMap = Map.from(state);
      if (currentMap.containsKey(event.id)) {
        currentMap[event.id] = !currentMap[event.id]!;
      } else {
        currentMap[event.id] = true;
      }

      // Save to SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('hearts', jsonEncode(currentMap));
      yield currentMap;
    }
  }
}

class HeartEvent {}

class ToggleHeartEvent extends HeartEvent {
  final int id;

  ToggleHeartEvent(this.id);
}































// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// // Определение событий
// abstract class FavoriteEvent extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// class AddToFavorites extends FavoriteEvent {
//   final int itemId;

//   AddToFavorites(this.itemId);

//   @override
//   List<Object> get props => [itemId];
// }

// class RemoveFromFavorites extends FavoriteEvent {
//   final int itemId;

//   RemoveFromFavorites(this.itemId);

//   @override
//   List<Object> get props => [itemId];
// }

// // Определение состояния
// class FavoriteState extends Equatable {
//   final Set<int> favoriteIds;

//   FavoriteState({required this.favoriteIds});

//   @override
//   List<Object> get props => [favoriteIds];
// }

// // Определение BLoC
// class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
//   FavoriteBloc() : super(FavoriteState(favoriteIds: Set<int>()));

//   @override
//   Stream<FavoriteState> mapEventToState(FavoriteEvent event) async* {
//     if (event is AddToFavorites) {
//       final updatedSet = Set<int>.from(state.favoriteIds);
//       updatedSet.add(event.itemId);
//       yield FavoriteState(favoriteIds: updatedSet);
//     } else if (event is RemoveFromFavorites) {
//       final updatedSet = Set<int>.from(state.favoriteIds);
//       updatedSet.remove(event.itemId);
//       yield FavoriteState(favoriteIds: updatedSet);
//     }
//   }
// }
