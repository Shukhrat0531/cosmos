import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/const.dart';
import '../../routes/routes.gr.dart';

class MenuLogOut extends StatelessWidget {
  const MenuLogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar:  AppBar(
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
            InkWell(
              onTap: () {
                 AutoRouter.of(context).push(Authorization());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Войти в аккаунт",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
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
                // AutoRouter.of(context).push(MenuHelp());
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
          ],
        ),
      ),
    );
  }
}