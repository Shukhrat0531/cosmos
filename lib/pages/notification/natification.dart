import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';

class Natification extends StatelessWidget {
  const Natification({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/Clip path group.png",
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Уведомления",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Text(
          "Уведомлений нет",
          style: TextStyle(color: AppColors.primaryWhite),
        )),
      )
    ]);
  }
}
