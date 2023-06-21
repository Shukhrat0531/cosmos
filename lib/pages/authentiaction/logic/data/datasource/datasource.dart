





// import 'package:dio/dio.dart';

// import '../../utils/sms_for.dart';

//  const String baseUrl = 'https://dev.api.bordfoods.com/v1';

// abstract class AuthDataSource {
//   Future<Response> registerRequest(String phone, String name, String surname,
//       String email, String gender, bool termsAndCondition);
//   Future<Response> loginRequest(String phone);
//   Future<Response> smsRequest(String phone, String code, int smsFor);
// }

// class AuthDataSourceImpl implements AuthDataSource {
//   Dio dio = Dio();
//   @override
//   Future<Response> registerRequest(String phone, String name, String surname,
//       String email, String gender, bool termsAndCondition) async {
//     return dio.post('${baseUrl}/mobile/auth/register', data: {
//       'phone': phone,
//       'name': name,
//       'surname': surname,
//       'email': email,
//       'gender': gender,
//       'term_and_condition': termsAndCondition,
//     });
//   }

//   @override
//   Future<Response> loginRequest(String phone) {
//     String lang = getLanguage().serverCode;
//     return dio.post('${baseUrl}/mobile/auth/login',
//         options: Options(headers: {'Content-Language': lang}),
//         data: {'phone': phone});
//   }

//   @override
//   Future<Response> smsRequest(String phone, String code, int smsFor) {
//     switch (smsFor) {
//       case SmsFor.login:
//         return dio
//             .post('${baseUrl}/mobile/auth/login/verify-code', data: {
//           'phone': phone,
//           'verification_code': code,
//         });
//       case SmsFor.register:
//         return dio
//             .post('${baseUrl}/mobile/auth/register/verify-code', data: {
//           'phone': phone,
//           'verification_code': code,
//         });
//     }
//   }
// }
