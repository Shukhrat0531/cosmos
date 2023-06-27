
// import 'package:shared_preferences/shared_preferences.dart';

// class FavoriteRepository {
//   static const _favoritesKey = 'favorites';

//   Future<void> addToFavorites(int id) async {
//     final prefs = await SharedPreferences.getInstance();
//     final favorites = await getFavorites();
//     favorites.add(id);
//     await prefs.setStringList(
//         _favoritesKey, favorites.map((e) => e.toString()).toList());
//   }

//   Future<void> removeFromFavorites(int id) async {
//     final prefs = await SharedPreferences.getInstance();
//     final favorites = await getFavorites();
//     favorites.remove(id);
//     await prefs.setStringList(
//         _favoritesKey, favorites.map((e) => e.toString()).toList());
//   }

//   Future<List<int>> getFavorites() async {
//     final prefs = await SharedPreferences.getInstance();
//     final favoritesList = prefs.getStringList(_favoritesKey) ?? [];
//     return favoritesList.map((e) => int.parse(e)).toList();
//   }
// }
