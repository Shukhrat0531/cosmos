import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../const/const.dart';
import 'logic/cart_bloc.dart';
import 'logic/cart_item_model.dart';

class CartItem extends StatelessWidget {
  final CartItemModel item;
  final VoidCallback onPressed;

  const CartItem({super.key, required this.item, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20),
          child: Container(
            child: Row(
              children: [
                Container(
                    height: 96,
                    width: 96,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.network(item.cover)),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        item.name,
                        style: TextStyle(
                            fontSize: 16, color: AppColors.primaryWhite),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "${item.price} ₸",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.primaryWhite),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${item.daysCount} суток",
                          style: TextStyle(
                              fontSize: 18, color: AppColors.primaryWhite),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        TextButton(
                          onPressed:onPressed,
                          child: Text(
                            "Удалить",
                            style: TextStyle(color: AppColors.primaryWhite),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
