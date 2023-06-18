import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/const.dart';

class FaildOrder extends StatelessWidget {
  const FaildOrder({super.key});

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
              SvgPicture.asset('assets/images/Group 23.svg'),
              SizedBox(height: 15,),
              Text("Не получилось оформить заказ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Text("Попробуйте ещё раз",style: TextStyle(fontSize: 16),),
              SizedBox(height: 30,),
              Container(
                width: 279,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColors.primaryBottonBlue,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  onPressed: () {
                   
                  },
                  child: Text(
                    'К заказу',
                    style: TextStyle(
                        color: AppColors.primaryWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              
            ],
          ),
        ),
      ),
    );
  }
}
