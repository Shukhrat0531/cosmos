




import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../services/network_service.dart';
import '../../authentiaction/logic/data/datasource/datasource.dart';
import 'cart_item_model.dart';

@Injectable()
class CartRepository {
  final NetworkService service;

  CartRepository(this.service);

  Future<List<CartItemModel>> getCart() async {
    Response response = await service.dio
        .get('${baseUrl}/client/user/carts', options: service.option);
    return (response.data['data'] as List)
        .map((e) => CartItemModel.fromJson(e))
        .toList();
  }

  Future<void> addToCart(int id, int quantity, int priceId) async {
    await service.dio.post('${baseUrl}/client/user/carts/products/$id',
        options: service.option,
        data: {'quantity': quantity, 'price_id': priceId});
  }

  Future<void> deleteFromCart(int id) async {
    await service.dio.delete('${baseUrl}/client/user/carts/$id',
        options: service.option);
  }

  Future<void> deleteAllFromCart() async {
    await service.dio.delete('${baseUrl}/client/user/carts',
        options: service.option);
  }
}
