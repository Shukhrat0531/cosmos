import 'package:cosmos/pages/home/game_detailist/game_model.dart';
import 'package:dio/dio.dart';

import '../../authentiaction/logic/data/datasource/datasource.dart';

class GameRepository {
  final Dio dio = Dio();
  // final int? cityId = getCity()?.id;
  // final String? lang = LanguageCubit.getLanguageServerCode();

  Future<List<Game>> getGames(int id) async {
    Response response = await dio.get('${baseUrl}/client/genres/${id}/games',
        options: Options(headers: {
          'City': '1',
          'Accept': 'application/json',
        }));
   return (response.data['data'] as List).map((game) => Game.fromJson(game)).toList();
  }
}
