


import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../services/network_service.dart';
import '../../../authentiaction/logic/data/datasource/datasource.dart';
import 'menu_models.dart';

@Injectable()
class MenuRepository {
  final NetworkService service;

  MenuRepository(this.service);
  Future<ProfileModel> getProfile() async {
    Response response = await service.dio.get(
        '${baseUrl}/client/user/profile',
        options: service.option);
    return ProfileModel.fromJson(response.data['data']);
  }

  Future<List<HelpModel>> getHelpInfo() async {
    Response response = await service.dio.get(
        '${baseUrl}/client/help-sections',
        options: service.option);
    return (response.data['help-sections'] as List)
        .map((e) => HelpModel.fromJson(e))
        .toList();
  }
}
