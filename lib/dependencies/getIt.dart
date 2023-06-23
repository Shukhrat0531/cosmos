import 'package:get_it/get_it.dart';

import '../pages/authentiaction/logic/bloc/auth_bloc.dart';
import '../pages/authentiaction/logic/data/datasource/datasource.dart';
import '../pages/authentiaction/logic/data/repository/repositry.dart';

final getIt = GetIt.instance;
void initGetIt() async {
  getIt.registerFactory<AuthBloc>(() => AuthBloc(getIt()));

  getIt
      .registerLazySingleton<AuthReposotory>(() => AuthReposotoryImpl(getIt()));

  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl());
}
