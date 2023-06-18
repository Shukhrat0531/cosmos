import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/const.dart';

class SuccsesOrder extends StatelessWidget {
  const SuccsesOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          
        },icon: Icon(Icons.close,color: Colors.black,)),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 65),
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset('assets/images/Group 23 (1).svg'),
              SizedBox(height: 15,),
              Text("Заказ 123241 оформлен",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Text("В ближайшее время наш \nменеджер свяжется с вами",style: TextStyle(fontSize: 16),),
              SizedBox(height: 30,),
              Container(
                width: 279,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColors.primaryBottonBlue,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  onPressed: () {
                   context.router.pushNamed('/main-widget');
                  },
                  child: Text(
                    'На главную',
                    style: TextStyle(
                        color: AppColors.primaryWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 279,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Мои заказы',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
