

import 'package:cosmos/pages/authentiaction/logic/data/datasource/datasource.dart';
import 'package:cosmos/pages/home/ar_details/ar_model.dart';
import 'package:dio/dio.dart';

class ArendaRepository {
  final Dio dio = Dio();


  Future<List<Arend>> getGames(int id) async {
    Response response = await dio.get('${baseUrl}/client/categories/${id}/products',
        options: Options(headers: {
          'City': '1',
          'Accept': 'application/json',
        }));
    return (response.data['data'] as List)
        .map((game) => Arend.fromJson(game))
        .toList();
  }
}

