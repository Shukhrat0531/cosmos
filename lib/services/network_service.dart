


import 'package:cosmos/services/prefens_services.dart';
import 'package:dio/dio.dart';

class NetworkService {
  final PreferencesService prefs;

  NetworkService(this.prefs);

  Dio get dio => Dio();
  Options get option => Options(headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${prefs.tokenKey}',
        'Content-Language': prefs.languageCode,
        'City': 1,
      });

  
}
