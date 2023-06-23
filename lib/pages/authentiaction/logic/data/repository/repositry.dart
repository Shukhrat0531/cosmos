// import 'package:dio/dio.dart';

import 'package:dio/dio.dart';

import '../datasource/datasource.dart';

abstract class AuthReposotory {
  Future<void> registerRequest(String phone, String name, String surname,
      String patronymic, String year_of_birth,String gender, String promo_code,bool term_and_condition);
  Future<void> loginRequest(String phone);
  Future<String?> smsRequest(String phone, String code, String smsFor);
}

class AuthReposotoryImpl implements AuthReposotory {
  final AuthDataSource dataSource;

  AuthReposotoryImpl(this.dataSource);
  @override
  Future<void> registerRequest(
      String phone,
      String name,
      String surname,
      String patronymic,
      String year_of_birth,
      String gender,
      String promo_code,
      bool term_and_condition) async {
    await dataSource.registerRequest(phone, name, surname, patronymic,
        year_of_birth, gender, promo_code, term_and_condition);
  }

  @override
  Future<void> loginRequest(String phone) async {
    await dataSource.loginRequest(phone);
  }

  @override
  Future<String?> smsRequest(String phone, String code, String smsFor) async {
    Response response = await dataSource.smsRequest(phone, code, smsFor);
    return (response.data as Map<String, dynamic>)['token'];
  }
}
