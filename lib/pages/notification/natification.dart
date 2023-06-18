import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';

class Natification extends StatelessWidget {
  const Natification({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryWhite,
        title: Text("Уведомления",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Center(
       child: Text("Уведомлений нет")
      ),
    );
  }
}