import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/const.dart';

class MenuOrderEmpty extends StatelessWidget {
  const MenuOrderEmpty({super.key});

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
          'Мои заказы',
          style: TextStyle(color: AppColors.primaryBlack),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 75),
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset('assets/images/emp_ord.svg'),
              SizedBox(
                height: 15,
              ),
              Text(
                "У вас пока нету заказов",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              
              SizedBox(
                height: 30,
              ),
              Container(
                width: 279,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColors.primaryBottonBlue,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Начать покупки',
                    style: TextStyle(
                        color: AppColors.primaryWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
