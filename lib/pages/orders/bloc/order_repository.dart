



import 'package:cosmos/pages/orders/bloc/ored_model.dart';
import 'package:injectable/injectable.dart';

import '../../../services/network_service.dart';
import '../../authentiaction/logic/data/datasource/datasource.dart';

@Singleton()
class OrderRepository {
  final NetworkService network;

  OrderRepository(this.network);

  Future<int> createOrder(List<CreateOrderProductModel> products, int addressId,
      bool spendBonuses, String promocode) async {
    final List<Map<String, dynamic>> productsJson =
        products.map((product) => product.toJson()).toList();

    final result = await network.dio.post(
        '${baseUrl}/client/user/orders',
        options: network.option,
        data: {
          "products": productsJson,
          "address_id": addressId,
          "spend_bonuses": spendBonuses,
          "promocode": promocode
        });
    return result.data['id'];
  }
}
