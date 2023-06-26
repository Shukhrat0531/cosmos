import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';

import '../pages/home/game_detailist/game_model.dart';

class GameGard extends StatelessWidget {
  final Game game;
  const GameGard({Key? key, required this.game}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
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
      height: 192,
      child: Column(
        children: [
          
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            width: 141,
            height: 132,
            child: Image.network(game.image,)),
          SizedBox(
            height: 10,
          ),
          Text(
            game.name,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
