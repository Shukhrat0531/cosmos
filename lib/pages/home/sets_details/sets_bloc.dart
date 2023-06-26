import 'package:cosmos/pages/home/sets_details/product_detail_model.dart';
import 'package:cosmos/pages/home/sets_details/sets_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



 class ProductBloc extends Bloc<ProductEvent,ProductState>{
  final ProductRepository repository;

  ProductBloc(this.repository):super(ProductInital()){
    on<GetDetails>((event, emit) async {
      emit(ProductLoading());
      try {
        ProductDetailModel product = await repository.getInfo(event.id);
        emit(ProductSecces(product));
      } on DioException catch (e) {
         print(e.message);
      }
    });
  }
}



abstract class ProductEvent {}
  class GetDetails extends ProductEvent{
    final int id;
    GetDetails( this.id);
  }




abstract class  ProductState {}
 
  class ProductInital extends ProductState{}

  class ProductLoading extends ProductState{}

  class ProductSecces extends ProductState{
   final ProductDetailModel product;
   ProductSecces( this.product);
  }

  class ProductFailure extends ProductState{
    final String message;
    ProductFailure(this.message);

  }