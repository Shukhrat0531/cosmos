


import 'package:dio/dio.dart';

String getErrorMessage(DioException e) {
  String errorMessage = '';
  try {
    (e.response?.data['errors'] as Map<String, dynamic>).forEach((key, value) {
      for (var element in (value as List)) {
        errorMessage += '\n${element as String}';
      }
    });
  } catch (_) {
    errorMessage = e.response?.data['message'];
  }
  return errorMessage;
}
