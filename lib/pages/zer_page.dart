import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';

import '../main.dart';

class ZeroPage extends StatelessWidget {
  const ZeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/Clip path group.png"),
            fit: BoxFit
                .cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 270,),
            Center(child: Image.asset('assets/images/Vector (4).png')),
            SizedBox(height: 20,),
            Center(child: Image.asset('assets/images/Vector (5).png')),
            SizedBox(height: 10,),
            Center(child: Image.asset('assets/images/Vector (6).png')),
            SizedBox(height: 160,),
            Text("Тілді таңдаңыз / Выберите язык",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.primaryWhite),),
            SizedBox(height: 29,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.primaryWhite,
                minimumSize: Size(325, 60),
              ),
              onPressed: () {
                context.router.pushNamed('/splash-screen');
                final appState = LanguageProvider.of(context);
                appState.setLocale(Locale('kk', 'KZ'));
              },
              child: Text(
                "Қазақша",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.black),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.primaryWhite,
                minimumSize: Size(325, 60),
              ),
              onPressed: () {
                context.router.pushNamed('/splash-screen');
                final appState = LanguageProvider.of(context);
                appState.setLocale(Locale('ru', 'RU'));
               
              },
              child: Text(
                "Русский",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),

            Text(context.localized.helloWorld),
          ],
        ),
      ),
    );
  }
}