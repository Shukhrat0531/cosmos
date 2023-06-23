import 'dart:convert';
import 'package:cosmos/pages/home/logic/data/model/genre.dart';
import 'package:dio/dio.dart';





class SliderRepository {
  String endpoint = 'https://api.nurbus.kz/client/genres';
  Future<List<Genre>> getSliders() async {
     final dio = Dio();
    Response response = await dio.get(endpoint, options: Options(headers: {'City':'1','Accept': 'application/json'}));
    return (response.data['data'] as List).map((e) => Genre.fromJson(e)).toList();
  }
  String url = 'https://api.nurbus.kz/client/categories';
  Future<List<Genre>> getCategory() async {
    final dio = Dio();
    Response response = await dio.get(url,
        options: Options(headers: {'City': '1', 'Accept': 'application/json'}));
    return (response.data['data'] as List)
        .map((e) => Genre.fromJson(e))
        .toList();
  }
  String seturl = 'https://api.nurbus.kz/client/sets';
  Future<List<SetModel>> getSets() async {
    final dio = Dio();
    Response response = await dio.get(seturl,
        options: Options(headers: {'City': '1', 'Accept': 'application/json'}));
    return (response.data['data'] as List)
        .map((e) => SetModel.fromJson(e))
        .toList();
  }
}