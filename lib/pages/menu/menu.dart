import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../routes/routes.gr.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

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
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Меню",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: AppColors.primaryWhite),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 10),
              child: Text(
                "Алматы",
                style: TextStyle(color: AppColors.primaryWhite),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Амир Капаров",
                      style: TextStyle(
                          fontSize: 16, color: AppColors.primaryWhite),
                    ),
                    Text(
                      "+7 701 324 2232",
                      style: TextStyle(
                          color: AppColors.primaryWhite,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/images/str.svg')),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              height: 46,
              width: 355,
              decoration: BoxDecoration(
                  color: Color(0xFFEFF5FF),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "${context.localized.bonuses}",
                      style: TextStyle(color: AppColors.primaryBlue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 10),
                    child: Text(
                      "2 000 ₸",
                      style: TextStyle(
                          color: AppColors.primaryBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                AutoRouter.of(context).push(MenuBonus());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                     ColorFiltered(
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          child:  SvgPicture.asset('assets/images/Abonements.svg'),),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "${context.localized.howGetBonus}",
                        style: TextStyle(
                            fontSize: 16, color: AppColors.primaryWhite),
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
                AutoRouter.of(context).push(MenuOrderEmpty());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                     ColorFiltered(
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          child:   SvgPicture.asset('assets/images/Order.svg'),),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "${context.localized.myOrders}",
                        style: TextStyle(
                            fontSize: 16, color: AppColors.primaryWhite),
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
                     ColorFiltered(
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          child:  SvgPicture.asset('assets/images/Language.svg'),),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "${context.localized.appLang}",
                        style: TextStyle(
                            fontSize: 16, color: AppColors.primaryWhite),
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
                     ColorFiltered(
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          child:  SvgPicture.asset('assets/images/Help.svg'),),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "${context.localized.helpandContact}",
                        style: TextStyle(
                            fontSize: 16, color: AppColors.primaryWhite),
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
                      ColorFiltered(
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          child: SvgPicture.asset('assets/images/Log out.svg')),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "${context.localized.singOut}",
                        style: TextStyle(
                            fontSize: 16, color: AppColors.primaryWhite),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '${context.localized.myFriends}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.primaryWhite),
                )),
            SizedBox(
              height: 4,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '${context.localized.friendsActiveCode}',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryWhite),
                )),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
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
                      Text(
                        '+7 701 324 2343',
                        style: TextStyle(color: AppColors.primaryWhite),
                      ),
                      Text('Ержан',
                          style: TextStyle(color: AppColors.primaryWhite))
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
                      Text('+7 701 324 2343',
                          style: TextStyle(color: AppColors.primaryWhite)),
                      Text('Ержан',
                          style: TextStyle(color: AppColors.primaryWhite))
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
                      Text('+7 701 324 2343',
                          style: TextStyle(color: AppColors.primaryWhite)),
                      Text('Ержан',
                          style: TextStyle(color: AppColors.primaryWhite))
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
                      Text('+7 701 324 2343',
                          style: TextStyle(color: AppColors.primaryWhite)),
                      Text('Ержан',
                          style: TextStyle(color: AppColors.primaryWhite))
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
                      Text('+7 701 324 2343',
                          style: TextStyle(color: AppColors.primaryWhite)),
                      Text('Ержан',
                          style: TextStyle(color: AppColors.primaryWhite))
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
                      Text('+7 701 324 2343',
                          style: TextStyle(color: AppColors.primaryWhite)),
                      Text('Ержан',
                          style: TextStyle(color: AppColors.primaryWhite))
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      )
    ]);
  }
}
