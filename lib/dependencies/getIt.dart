import 'package:cosmos/pages/favorites/favorites_bloc.dart';
import 'package:cosmos/pages/home/ar_details/ar_bloc.dart';
import 'package:cosmos/pages/home/ar_details/ar_repository.dart';
import 'package:cosmos/pages/home/game_detailist/game_bloc.dart';
import 'package:cosmos/routes/routes.gr.dart';
import 'package:get_it/get_it.dart';

import '../pages/authentiaction/logic/bloc/auth_bloc.dart';
import '../pages/authentiaction/logic/data/datasource/datasource.dart';
import '../pages/authentiaction/logic/data/repository/repositry.dart';
import '../pages/home/game_detailist/game_repository.dart';
import '../pages/home/sets_details/sets_bloc.dart';
import '../pages/home/sets_details/sets_repository.dart';

final getIt = GetIt.instance;
void initGetIt() async {
  getIt.registerFactory<AuthBloc>(() => AuthBloc(getIt()));

  getIt
      .registerLazySingleton<AuthReposotory>(() => AuthReposotoryImpl(getIt()));

  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl());

  getIt.registerFactory<ProductBloc>(() => ProductBloc(getIt()));

  getIt.registerLazySingleton<ProductRepository>(() => ProductRepository());

  getIt.registerFactory<GameBloc>(() => GameBloc(getIt()));

  getIt.registerLazySingleton<GameRepository>(() => GameRepository());

  getIt.registerFactory<ArendaBloc>(() => ArendaBloc(getIt()));

  getIt.registerLazySingleton<ArendaRepository>(() => ArendaRepository());

  getIt.registerFactory<FavoriteBloc>(() => FavoriteBloc());

}
