import 'package:cosmos/pages/favorites/favorites_bloc.dart';
import 'package:cosmos/pages/home/ar_details/ar_bloc.dart';
import 'package:cosmos/pages/home/ar_details/ar_repository.dart';
import 'package:cosmos/pages/home/game_detailist/game_bloc.dart';
import 'package:cosmos/pages/menu/logic/bloc/menu_bloc.dart';
import 'package:cosmos/routes/routes.gr.dart';
import 'package:cosmos/services/network_service.dart';
import 'package:cosmos/services/prefens_services.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/authentiaction/logic/bloc/auth_bloc.dart';
import '../pages/authentiaction/logic/data/datasource/datasource.dart';
import '../pages/authentiaction/logic/data/repository/repositry.dart';
import '../pages/home/game_detailist/game_repository.dart';
import '../pages/home/sets_details/sets_bloc.dart';
import '../pages/home/sets_details/sets_repository.dart';
import '../pages/menu/logic/bloc/menu_repository.dart';

final getIt = GetIt.instance;
void initGetIt() async {
  
  getIt.registerFactory<AuthBloc>(() => AuthBloc(getIt(),getIt()));

  getIt
      .registerLazySingleton<AuthReposotory>(() => AuthReposotoryImpl(getIt()));

  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl());

  getIt.registerFactory<ProductBloc>(() => ProductBloc(getIt()));

  getIt.registerLazySingleton<ProductRepository>(() => ProductRepository());

  getIt.registerFactory<GameBloc>(() => GameBloc(getIt()));

  getIt.registerLazySingleton<GameRepository>(() => GameRepository());

  getIt.registerFactory<ArendaBloc>(() => ArendaBloc(getIt()));

  getIt.registerLazySingleton<ArendaRepository>(() => ArendaRepository());

  // getIt.registerFactory<FavoriteBloc>(() => FavoriteBloc());

  getIt.registerFactory<MenuBloc>(() => MenuBloc(getIt()));

  getIt.registerLazySingleton<MenuRepository>(() => MenuRepository(getIt()));

  getIt.registerLazySingleton<NetworkService>(() => NetworkService(getIt()));

    getIt.registerLazySingleton<PreferencesService>(() => PreferencesService());
    final pref = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => pref);
}
