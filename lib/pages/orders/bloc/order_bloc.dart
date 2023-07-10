


import 'package:cosmos/pages/orders/bloc/ored_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../services/error_massege.dart';
import 'order_repository.dart';

@Injectable()
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository repository;
  // final OrderListBloc listBloc;
  OrderBloc(this.repository,) : super(OrderInitial()) {
    on<CreateOrder>((event, emit) async {
      emit(CreateOrderLoading());
      try {
        final id = await repository.createOrder(event.products, event.addressId,
            event.spendBonuses, event.promocode);
        emit(CreateOrderSuccess(id));
        // listBloc.add(GetOrderList());
      } on DioException catch (e) {
        emit(CreateOrderFailure(getErrorMessage(e)));
      }
    });
  }
}

abstract class OrderEvent {}

class CreateOrder extends OrderEvent {
  final List<CreateOrderProductModel> products;
  final int addressId;
  final bool spendBonuses;
  final String promocode;

  CreateOrder(this.products, this.addressId, this.spendBonuses, this.promocode);
}

abstract class OrderState {}

class OrderInitial extends OrderState {}

class CreateOrderLoading extends OrderState {}

class CreateOrderSuccess extends OrderState {
  final int id;

  CreateOrderSuccess(this.id);
}

class CreateOrderFailure extends OrderState {
  final String? message;

  CreateOrderFailure(this.message);
}
