import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../const/const.dart';
import '../../routes/routes.gr.dart';
import '../cart/cart_item.dart';

class PayOrder extends StatefulWidget {
  const PayOrder({super.key});

  @override
  State<PayOrder> createState() => _PayOrderState();
}

class _PayOrderState extends State<PayOrder> {
  String frend = "";
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        elevation: 0,
        leadingWidth: 120,
        leading: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.primaryBottonBlue,
              ),
            ),
            Text(
              "Назад",
              style: TextStyle(color: AppColors.primaryBottonBlue),
            ),
          ],
        ),
        title: Text(
          'Способ оплаты',
          style: TextStyle(color: AppColors.primaryBlack),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CartItem(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 180,
                  height: 42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1, color: AppColors.primaryBottonBlue)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Оплата при доставке",
                      style: TextStyle(color: AppColors.primaryBlack),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Switch(
                  // This bool value toggles the switch.
                  value: light,
                  activeColor: AppColors.primaryBottonBlue,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      light = value;
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Потратить бонусы"),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "3 421 Б",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("У меня есть промокод"),
            SizedBox(height: 11,),
            Row(
              children: [
                Container(
                  width: 160,
                  height: 40,
                  child: TextField(
                    onChanged: (value) => frend = value,
                    decoration: InputDecoration(
                      labelText: 'Введите промокод ',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey, // Цвет границы
                          width: 1.0, // Ширина границы
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)), // Радиус границы
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey, // Цвет границы
                          width: 1.0, // Ширина границы
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)), // Радиус границы
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: frend.length == 8
                          ? AppColors.primaryBottonBlue
                          : Color(0xFFCDCDCD)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Применить",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 230,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Итого к оплате ",style: TextStyle(fontSize: 20,),),
                  Text(
                    "2 579 ₸",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
             Container(
              width: 355,
              height: 56,
              decoration: BoxDecoration(
                  color: AppColors.primaryBottonBlue,
                  borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                onPressed: () {
                  context.router.push(SuccsesOrder());
                  
                },
                child: Text(
                  'Оформить',
                  style: TextStyle(
                      color: AppColors.primaryWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
