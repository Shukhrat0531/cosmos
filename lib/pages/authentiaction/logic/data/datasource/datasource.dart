import 'package:dio/dio.dart';

// import '../../utils/sms_for.dart';

const String baseUrl = 'https://api.nurbus.kz';

abstract class AuthDataSource {
  Future<Response> registerRequest(
      String phone,
      String name,
      String surname,
      String patronymic,
      String gender,
      String year_of_birth,
      String promo_code,
      bool term_and_condition);
  Future<Response> loginRequest(String phone);
  Future<Response> smsRequest(String phone, String code, String smsFor);
}

class AuthDataSourceImpl implements AuthDataSource {
  Dio dio = Dio();
  @override
  Future<Response> registerRequest(
      String phone,
      String name,
      String surname,
      String patronymic,
      String year_of_birth,
      String gender,
      String promo_code,
      bool term_and_condition) async {
    return dio.post('${baseUrl}/client/auth/register',
    options: Options(headers: {'City': '1', 'Accept': 'application/json'}),
     data: {
      'phone': phone,
      'name': name,
      'surname': surname,
      'patronymic': patronymic,
      'year_of_birth':year_of_birth,
      'gender': gender,
      'promo_code': promo_code,
      'term_and_condition': term_and_condition,
    });
  }

  @override
  Future<Response> loginRequest(String phone) {
     return dio.post('${baseUrl}/client/auth/login',
        options: Options(headers: {
          'Accept': 'application/json',
        }),
        data: {'phone': phone});
      
  }

  @override
  Future<Response> smsRequest(String phone, String code, String smsFor) {
    if (smsFor == "0") {
      return dio.post('${baseUrl}/client/auth/register/verify-code',
        options: Options(headers: {
          'Accept': 'application/json',
        }),
        data: {
          'phone': phone,
          'verification_code': code,
        });
  
    }else if (smsFor == "1") {
      return dio.post('${baseUrl}/client/auth/login/verify-code',
      options: Options(headers: {
          'Accept': 'application/json',
        }),
        data: {
          'phone': phone,
          'verification_code': code,
        });
    }
    throw UnimplementedError();
  }
}
