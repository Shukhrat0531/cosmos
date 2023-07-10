import 'package:cosmos/pages/orders/adress/adres_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../services/network_service.dart';
import '../../authentiaction/logic/data/datasource/datasource.dart';

@Injectable()
class AddressRepository {
  final NetworkService network;

  AddressRepository(this.network);
  Future<List<AddressModel>> getAddresses() async {
    Response response = await network.dio.get(
        '${baseUrl}/client/user/addresses',
        options: network.option);
    return (response.data['data'] as List)
        .map((e) => AddressModel.fromJson(e))
        .toList();
  }

  Future<void> addAddress(
      int cityId, String street, String building, String apartment) async {
    await network.dio.post('${baseUrl}/client/user/addresses',
        options: network.option,
        data: {
          "city_id": cityId,
          "street": street,
          "building": building,
          "apartment": apartment
        });
  }

  Future<void> updateAddress(
      int id, String street, String building, String apartment) async {
    await network.dio.put('${baseUrl}/client/user/addresses/$id',
        options: network.option,
        data: {
          "city_id": 1,
          "street": street,
          "building": building,
          "apartment": apartment
        });
  }

  Future<void> deleteAddress(int id) async {
    await network.dio.delete('${baseUrl}/client/user/addresses/$id',
        options: network.option);
  }
}
