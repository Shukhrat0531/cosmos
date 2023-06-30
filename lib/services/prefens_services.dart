


import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/home/city/city_model.dart';

@Singleton()
class PreferencesService {
 late final SharedPreferences _prefs;

  static const String tokenKeyKey = 'tokenKey';
  static const String cityKey = 'city';
  static const String languageCodeKey = 'languageCode';
  static const String userIdKey = 'userId';


  String _tokenKey = '';
  CityModel? _city;
  String _languageCode = '';
  int? _userId;

  String get tokenKey => _tokenKey;
  CityModel? get city => _city;
  String get languageCode => _languageCode;
  int? get userId => _userId;

  PreferencesService() {

    _init();
    
  }
  void _init() async {
    _prefs = await SharedPreferences.getInstance();
    _tokenKey = _prefs.getString(tokenKeyKey) ?? '';

    final String? cityJson = _prefs.getString(cityKey);
    if (cityJson != null) {
      Map<String, dynamic> cityMap = jsonDecode(cityJson);
      _city = CityModel.fromJson(cityMap);
    }

    _languageCode = _prefs.getString(languageCodeKey) ?? '';
  }
  void setUser(String tokenKey, int userId) {
    _tokenKey = tokenKey;
    _prefs.setString(tokenKeyKey, tokenKey);

    _userId = userId;
    _prefs.setInt(userIdKey, userId);
  }

  void deleteUser() {
    _prefs.remove(userIdKey);
    _prefs.remove(tokenKey);
  }

  void setTokenKey(String value) {
    _tokenKey = value;
    _prefs.setString(tokenKeyKey, value);
  }

  void setCity(CityModel value) {
    _city = value;
    String cityJson = jsonEncode(CityModel.toJson(value));
    _prefs.setString(cityKey, cityJson);
  }

  void setLanguageCode(String value) {
    _languageCode = value;
    _prefs.setString(languageCodeKey, value);
  }
}
