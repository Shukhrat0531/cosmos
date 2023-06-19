import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../routes/routes.gr.dart';

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
            SizedBox(height: 28,),
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
                  padding: const EdgeInsets.only(left: 16,right: 10),
                  child: Text(
                    "2 000 ₸",
                    style: TextStyle(color: AppColors.primaryBlue,fontWeight: FontWeight.bold),
                  ),
                )
              ],),
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: () {
                AutoRouter.of(context).push(MenuBonus());
              },
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/Abonements.svg'),
                      SizedBox(width: 15,),
                      Text("Как получить бонусы",style: TextStyle(fontSize: 16),),
                    ],
                  ),
                 Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: SvgPicture.asset('assets/images/str.svg'),
                 ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            InkWell(
            onTap: () {
              AutoRouter.of(context).push(MenuOrderEmpty());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/Order.svg'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Мои заказы",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset('assets/images/str.svg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              AutoRouter.of(context).push(MenuLanguage());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/Language.svg'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Язык приложения",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset('assets/images/str.svg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              AutoRouter.of(context).push(MenuHelp());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/Help.svg'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Помощь и контакты",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset('assets/images/str.svg'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 29,
          ),
          InkWell(
            onTap: () {
              AutoRouter.of(context).push(MenuLogOut());
              
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/Log out.svg'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Выйти",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
          SizedBox(height: 45,),
          Divider(height: 2,color: Colors.black,),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text('Мои друзья',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),)),
          SizedBox(height: 4,),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text('Друзья, которые активировали ваш код',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),)),
          SizedBox(height: 25,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color(0xFFF6F6F6)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset('assets/images/Profile.svg',width: 24,height: 24,),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('+7 701 324 2343'),
                    Text('Ержан')
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFF6F6F6)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          'assets/images/Profile.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('+7 701 324 2343'),
                    Text('Ержан')
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color(0xFFF6F6F6)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset('assets/images/Profile.svg',width: 24,height: 24,),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('+7 701 324 2343'),
                    Text('Ержан')
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFF6F6F6)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          'assets/images/Profile.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('+7 701 324 2343'),
                    Text('Ержан')
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFF6F6F6)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          'assets/images/Profile.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('+7 701 324 2343'),
                    Text('Ержан')
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFF6F6F6)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          'assets/images/Profile.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('+7 701 324 2343'),
                    Text('Ержан')
                  ],
                )
          
              ],
            ),
          ),  
          

            
          ]),
      ),
    );
  }
}
