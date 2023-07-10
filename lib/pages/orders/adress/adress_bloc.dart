


import 'package:cosmos/pages/orders/adress/adress_repository.dart';
import 'package:cosmos/pages/orders/adress/adress_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../services/error_massege.dart';
import 'adres_model.dart';
import 'adress_event.dart';

@Injectable()
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final AddressRepository repository;
  List<AddressModel> _addresses = [];
  AddressModel? selectedAddress;

  AddressBloc(this.repository) : super(AddressLoading()) {
    on<GetAddresses>((event, emit) async {
      emit(AddressLoading());
      try {
        final addresses = await repository.getAddresses();
        _addresses = addresses;
        emit(AddressSuccess(addresses));
      } on DioException catch (e) {
        emit(AddressFailure(getErrorMessage(e)));
      }
    });

    on<UpdateSelectedAddress>((event, emit) async {
      selectedAddress = event.newValue;
      emit(AddressSuccess(_addresses));
    });

    on<AddAddress>((event, emit) async {
      emit(AddressLoading());
      try {
        await repository.addAddress(
            event.cityId, event.street, event.building, event.apartment);
        emit(EditAddressSuccess());
        add(GetAddresses());
      } on DioException catch (e) {
        emit(EditAddressFailure(getErrorMessage(e)));
      }
    });

    on<UpdateAddress>((event, emit) async {
      emit(AddressLoading());
      try {
        await repository.updateAddress(
            event.id, event.street, event.building, event.apartment);
        emit(EditAddressSuccess());
        add(GetAddresses());
      } on DioException catch (e) {
        emit(EditAddressFailure(getErrorMessage(e)));
      }
    });

    on<DeleteAddress>((event, emit) async {
      try {
        await repository.deleteAddress(event.id);
        emit(EditAddressSuccess());
        add(GetAddresses());
      } on DioException catch (e) {
        emit(AddressFailure(getErrorMessage(e)));
      }
    });
  }
}
