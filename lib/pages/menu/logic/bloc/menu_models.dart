import 'package:json_annotation/json_annotation.dart';

part 'menu_models.g.dart';

@JsonSerializable(createToJson: false)
class ProfileModel {
  final int id;
  final String name;
  final String surname;
  final String patronymic;
  final String phone;
  final int bonus;

  ProfileModel(this.id, this.name, this.surname, this.patronymic, this.phone,
      this.bonus);

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class HelpModel {
  final int id;
  final String name;
  final String content;

  HelpModel(this.id, this.name, this.content);

  factory HelpModel.fromJson(Map<String, dynamic> json) =>
      _$HelpModelFromJson(json);
}
