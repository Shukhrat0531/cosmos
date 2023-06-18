import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';

class GameGard extends StatelessWidget {
  const GameGard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryWhite,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), // color of shadow
        spreadRadius: 5, // extent of shadow, in logical pixels
        blurRadius: 7, // blur radius
        offset: Offset(0, 3), // changes position of shadow
        ),
       ]
      ),
      width: 141,
      height: 152,
      child: Column(
        children: [
          Image.asset('assets/images/item.png'),
          SizedBox(
            height: 10,
          ),
          Text(
            'Elden Ring',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
