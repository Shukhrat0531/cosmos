import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/const.dart';

class MenuLanguage extends StatefulWidget {
  const MenuLanguage({super.key});

  @override
  _MenuLanguageState createState() => _MenuLanguageState();
}

class _MenuLanguageState extends State<MenuLanguage> {
  String selectedLanguage = "Русский язык";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        elevation: 0,
        leadingWidth: 120,
        leading: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.primaryBottonBlue,
              ),
            ),
            Text(
              "Назад",
              style: TextStyle(color: AppColors.primaryBottonBlue),
            ),
          ],
        ),
        title: Text(
          'Язык приложения',
          style: TextStyle(color: AppColors.primaryBlack),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: SvgPicture.asset('assets/images/RU.svg'),
              ),
              title: Text('Русский язык'),
              trailing:
                  selectedLanguage == 'Русский язык' ? Icon(Icons.check) : null,
              onTap: () {
                setState(() {
                  selectedLanguage = 'Русский язык';
                });
              },
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: SvgPicture.asset('assets/images/kz.svg'),
              ),
              title: Text('Қазақ тілі'),
              trailing:
                  selectedLanguage == 'Қазақ тілі' ? Icon(Icons.check) : null,
              onTap: () {
                setState(() {
                  selectedLanguage = 'Қазақ тілі';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
