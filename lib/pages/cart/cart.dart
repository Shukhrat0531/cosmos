import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';
import 'package:cosmos/pages/home/sets_details/show_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_item.dart';
import 'logic/cart_bloc.dart';
// Другие импорты

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoading) {
          return Center(child: CircularProgressIndicator()); // Показывает индикатор загрузки во время загрузки
        } else if (state is CartSuccess) {
          return Stack(children: [
            Image.asset(
              "assets/images/Clip path group.png",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Scaffold(
              backgroundColor: const Color.fromARGB(0, 255, 255, 255),
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                elevation: 0,
                leadingWidth: 360,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Корзина",
                        style: TextStyle(
                            color: AppColors.primaryWhite,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<CartBloc>().add(DeleteAllFromCart());
                        },
                        child: Text("Очистить корзину",
                            style: TextStyle(
                                color: AppColors.primaryWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                ),
              ),
              body: ListView.builder(
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  return CartItem(
                    item: state.items[index],
                    onPressed: () {
                      context
                          .read<CartBloc>()
                          .add(DeleteFromCart(state.items[index].cartId));
                    },
                  );
                },
              ),
              floatingActionButton: InkWell(
                onTap: () {
                  context.router.pushNamed('/get-order');
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 335,
                    height: 46,
                    decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${context.localized.order}',
                          style: TextStyle(
                              color: AppColors.primaryBottonBlue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]);
        } else {
          return Text(
              state.toString()); // Вы можете изменить это на более подходящую страницу ошибки
        }
      },
    );
  }
}
