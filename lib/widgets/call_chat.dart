import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';

class CallChat extends StatelessWidget {
  const CallChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 160,
          height: 50,
          decoration: BoxDecoration(color: AppColors.primaryBottonBlue,borderRadius: BorderRadius.circular(50)),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: AppColors.primaryWhite),
                  child: Icon(Icons.call,color: AppColors.primaryBottonBlue,)),
                SizedBox(width: 12,),  
                Text("Бронь по \nтелефону",style: TextStyle(color: AppColors.primaryWhite,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
        SizedBox(width: 17,),
        Container(
          width: 160,
          height: 50,
          decoration: BoxDecoration(
              color: AppColors.primaryBottonBlue,
              borderRadius: BorderRadius.circular(50)),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.primaryWhite),
                    child: Image.asset('assets/images/Icon (1).png')
                    ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Написать  \nнам",
                  style: TextStyle(
                      color: AppColors.primaryWhite,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
