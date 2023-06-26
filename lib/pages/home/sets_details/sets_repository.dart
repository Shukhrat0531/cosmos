


import 'package:cosmos/pages/home/sets_details/product_detail_model.dart';
import 'package:dio/dio.dart';

import '../../authentiaction/logic/data/datasource/datasource.dart';

class ProductRepository {
  final Dio dio = Dio();
  // final int? cityId = getCity()?.id;
  // final String? lang = LanguageCubit.getLanguageServerCode();

  Future<ProductDetailModel> getInfo(int id) async {
    Response response = await dio.get('${baseUrl}/client/products/$id',
        options: Options(headers: {
          'City': '1',
          'Accept': 'application/json',
          
        }));
    return ProductDetailModel.fromJson(response.data['data']);
  }
}
