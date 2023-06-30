

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'cart_item_model.dart';
import 'cart_repository.dart';

@Injectable()
class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository repository;

  CartBloc(this.repository) : super(CartLoading()) {
    on<GetCartInfo>((event, emit) async {
      emit(CartLoading());
      try {
        final result = await repository.getCart();
        emit(CartSuccess(result));
      } on DioException catch (e) {
        emit(CartListFailure(e.message));
      }
    });
    on<AddToCart>((event, emit) async {
      emit(CartLoading());
      try {
        await repository.addToCart(event.id, event.quantity, event.priceId);
        emit(AddToCartSuccess());
        add(GetCartInfo());
      } on DioException catch (e) {
        emit(AddToCartFailure(e.message));
      }
    });
    on<DeleteFromCart>((event, emit) async {
      emit(CartLoading());
      try {
        await repository.deleteFromCart(event.id);
        add(GetCartInfo());
      } on DioException catch (e) {
        emit(CartListFailure(e.message));
      }
    });
    on<DeleteAllFromCart>((event, emit) async {
      emit(CartLoading());
      try {
        await repository.deleteAllFromCart();
        add(GetCartInfo());
      } on DioException catch (e) {
        emit(CartListFailure(e.message));
      }
    });
  }
}

abstract class CartState {}

abstract class CartEvent {}

class GetCartInfo extends CartEvent {}

class AddToCart extends CartEvent {
  final int id;
  final int priceId;
  final int quantity;

  AddToCart(this.id, this.priceId, this.quantity);
}

class DeleteFromCart extends CartEvent {
  final int id;
  DeleteFromCart(this.id);
}

class DeleteAllFromCart extends CartEvent {}

class AddToCartSuccess extends CartState {}

class AddToCartFailure extends CartState {
  final String? message;
  AddToCartFailure(this.message);
}

class CartLoading extends CartState {}

class CartSuccess extends CartState {
  final List<CartItemModel> items;
  CartSuccess(this.items);
}

class CartListFailure extends CartState {
  final String? message;
  CartListFailure(this.message);
}
