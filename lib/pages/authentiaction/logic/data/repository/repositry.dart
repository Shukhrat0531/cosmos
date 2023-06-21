// import 'package:dio/dio.dart';






// abstract class AuthReposotory {
//   Future<void> registerRequest(String phone, String name, String surname,
//       String email, String gender, bool termsAndCondition);
//   Future<void> loginRequest(String phone);
//   Future<String?> smsRequest(String phone, String code, String smsFor);
// }

// class AuthReposotoryImpl implements AuthReposotory {
//   final AuthDataSource dataSource;

//   AuthReposotoryImpl(this.dataSource);
//   @override
//   Future<void> registerRequest(String phone, String name, String surname,
//       String email, String gender, bool termsAndCondition) async {
//     await dataSource.registerRequest(
//         phone, name, surname, email, gender, termsAndCondition);
//   }

//   @override
//   Future<void> loginRequest(String phone) async {
//     await dataSource.loginRequest(phone);
//   }

//   @override
//   Future<String?> smsRequest(String phone, String code, String smsFor) async {
//     Response response = await dataSource.smsRequest(phone, code, smsFor);
//     return (response.data as Map<String, dynamic>)['token'];
//   }
// }
