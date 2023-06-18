import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        elevation: 0,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Меню",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: AppColors.primaryBlack),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 10),
            child: Text(
              "Алматы",
              style: TextStyle(color: AppColors.primaryBottonBlue),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Амир Капаров",style: TextStyle(fontSize: 16,),),
                    Text("+7 701 324 2232",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
                  ],
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: SvgPicture.asset('assets/images/str.svg')),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 46,
              width: 355,
              decoration: BoxDecoration(
                color: Color(0xFFEFF5FF),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("Бонусы",style: TextStyle(color: AppColors.primaryBlue),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "2 000 ₸",
                    style: TextStyle(color: AppColors.primaryBlue,fontWeight: FontWeight.bold),
                  ),
                )
              ],),
            )
            
          ]),
      ),
    );
  }
}
