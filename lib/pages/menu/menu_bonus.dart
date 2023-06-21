import 'package:flutter/material.dart';

import '../../const/const.dart';

class MenuBonus extends StatelessWidget {
  const MenuBonus({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Stack(
      children: [
        Image.asset(
          "assets/images/Clip path group.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
     Scaffold(
      backgroundColor: Colors.transparent,
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
          'Как получить бонусы',
          style: TextStyle(color: AppColors.primaryBottonBlue),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          
          children: [
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF3E71D9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // color of shadow
                      spreadRadius: 5, // extent of shadow, in logical pixels
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      '1. Бонусы после заказов',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.primaryWhite,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Text(
                      "За каждые 5 завершенных заказов в аренду вы получите 5000 Бонусов",
                      style: TextStyle(fontSize: 16,
                          color: AppColors.primaryWhite,
                        ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF3E71D9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // color of shadow
                      spreadRadius: 5, // extent of shadow, in logical pixels
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      '2. Бонусы за аренду',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.primaryWhite,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Text(
                      "В некоторых товарах мы указали количество бонусов которые вы можете получить после их заказа в аренду",
                      style: TextStyle(fontSize: 16,
                      color: AppColors.primaryWhite,
                        ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF3E71D9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // color of shadow
                      spreadRadius: 5, // extent of shadow, in logical pixels
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      '3. Поделитесь с другом',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.primaryWhite,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Text(
                      "Отправьте промокод друзьям и как только 3 из них закажут у нас в аренду, вы получите 1000 Бонусов",
                      style: TextStyle(fontSize: 16,
                      color: AppColors.primaryWhite,
                        ),
                    ),
                  ),
                  SizedBox(height: 20,),
                   Container(
                    width: 305,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Color(0xFF3E71D9),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        'QWERTY123',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 57, 57, 57),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      width: 305,
                      height: 56,
                      decoration: BoxDecoration(
                          color: AppColors.primaryBottonBlue,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Поделиться',
                          style: TextStyle(
                              color: AppColors.primaryWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
      ]
    );
  }
}
