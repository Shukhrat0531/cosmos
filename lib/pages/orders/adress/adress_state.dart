import 'package:flutter/cupertino.dart';

import 'adres_model.dart';

@immutable
abstract class AddressState {}

class AddressSuccess extends AddressState {
  final List<AddressModel> addresses;

  AddressSuccess(this.addresses);
}

class AddressFailure extends AddressState {
  final String? message;

  AddressFailure(this.message);
}

class AddressLoading extends AddressState {}

class EditAddressSuccess extends AddressState {}

class EditAddressFailure extends AddressState {
  final String? message;

  EditAddressFailure(this.message);
}
