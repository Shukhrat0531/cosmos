

import 'dart:js';

import 'package:auto_route/auto_route.dart';
import 'package:cosmos/pages/main_page.dart';
import 'package:cosmos/pages/zer_page.dart';
import 'package:cosmos/routes/routes.gr.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../pages/authentiaction/logic/data/datasource/datasource.dart';
import '../services/network_service.dart';
import '../services/prefens_services.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
}

@Singleton()
class AppCubit extends Cubit<AppStatus> {
  AppCubit(this.prefs, this.service) : super(AppStatus.unauthenticated);
  final PreferencesService prefs;
  final NetworkService service;

  void initialize() {
    checkAuth();
  }

  void checkAuth() {
    if (prefs.tokenKey != '') {
      emit(AppStatus.authenticated);
    } else {
      emit(AppStatus.unauthenticated);
    }
  }

  void logout(BuildContext context) async {
    try {
      await service.dio.post('${baseUrl}/client/user/logout',
          options: service.option);
      context.router.pushAndPopUntil( SplashScreen(),
          predicate: ModalRoute.withName('/'));
    } on DioException catch (e) {
      print(context,);
    }
    prefs.deleteUser();
    emit(AppStatus.unauthenticated);
  }

  PageRouteInfo get getInitialPage {
    if (state == AppStatus.authenticated) {
      return   HomeRoutes();
    } else {
      return  SplashScreen();
    }
  }
}
