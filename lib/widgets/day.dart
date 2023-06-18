import 'package:cosmos/const/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day extends StatelessWidget {
  const Day({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Padding(
        padding: const EdgeInsets.only( left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("1 сутки - 5 000 ₸",style: TextStyle(color: AppColors.primaryWhite,fontWeight: FontWeight.w600),),
            ElevatedButton(
              
              style:ElevatedButton.styleFrom(
                primary: AppColors.primaryWhite,
                onPrimary: AppColors.primaryBottonBlue,
                minimumSize: Size(112,25),
                
              ),
              onPressed: (){}, child: Text("249 Б"),)
          ],
      
        ),
      ),
    );
  }
}