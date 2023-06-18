import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';

import 'cart_item.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        elevation: 0,
        leadingWidth: 360,
        leading:Padding(
          padding: const EdgeInsets.only(left: 20,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Корзина",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: AppColors.primaryBlack),),
              Text("Очистить корзину",style: TextStyle(color: AppColors.primaryBottonBlue,fontSize: 14,fontWeight: FontWeight.w400)),
            ],
          ),
        ) ,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          CartItem(),
          CartItem(),
        ],
      ),
      floatingActionButton:  InkWell(
        onTap: () {
          context.router.pushNamed('/get-order');
        },
        child: Container(
                  width: 335,
                  height: 46,
                  decoration: BoxDecoration(
                      color: AppColors.primaryBottonBlue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text(
                        'Оформить заказ',
                        style: TextStyle(
                            color: AppColors.primaryWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
      ),
    );
  }
}