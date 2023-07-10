


import 'package:flutter/material.dart';

import 'adres_model.dart';

@immutable
abstract class AddressEvent {}

class GetAddresses extends AddressEvent {}

class UpdateSelectedAddress extends AddressEvent {
  final AddressModel newValue;

  UpdateSelectedAddress(this.newValue);
}

class AddAddress extends AddressEvent {
  final int cityId;
  final String street;
  final String building;
  final String apartment;

  AddAddress(this.cityId, this.street, this.building, this.apartment);
}

class UpdateAddress extends AddressEvent {
  final int id;
  final String street;
  final String building;
  final String apartment;

  UpdateAddress(this.id, this.street, this.building, this.apartment);
}

class GetEditInfoAddress extends AddressEvent {
  final int id;

  GetEditInfoAddress(this.id);
}

class DeleteAddress extends AddressEvent {
  final int id;

  DeleteAddress(this.id);
}
