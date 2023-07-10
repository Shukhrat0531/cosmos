




import 'package:cosmos/pages/cart/logic/cart_bloc.dart';
import 'package:cosmos/pages/orders/bloc/ored_model.dart';
import 'package:flutter/material.dart';

import '../../const/const.dart';

class GetCartItem extends StatelessWidget {
  final CreateOrderProductModel item;

  const GetCartItem({super.key, required this.item,});

  @override
  Widget build(BuildContext context) {
     
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
                    child: Image.network(item.image)),
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
                       
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
       
    );
  }
}
