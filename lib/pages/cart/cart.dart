import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';
import 'package:flutter/material.dart';

import 'cart_item.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
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
                Text("Очистить корзину",
                    style: TextStyle(
                        color: AppColors.primaryWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CartItem(),
            CartItem(),
          ],
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
  }
}
