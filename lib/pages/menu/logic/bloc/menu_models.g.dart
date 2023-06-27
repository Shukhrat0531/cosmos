// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      json['id'] as int,
      json['name'] as String,
      json['surname'] as String,
      json['patronymic'] as String,
      json['phone'] as String,
      json['bonus'] as int,
    );

HelpModel _$HelpModelFromJson(Map<String, dynamic> json) => HelpModel(
      json['id'] as int,
      json['name'] as String,
      json['content'] as String,
    );
