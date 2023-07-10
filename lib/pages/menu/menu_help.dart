import 'package:flutter/material.dart';

import '../../const/const.dart';
import 'logic/bloc/menu_models.dart';

class MenuHelp extends StatelessWidget {
  final List<HelpModel>? helpmodels;

  const MenuHelp({super.key, required this.helpmodels});

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
          'Помощь и контакты',
          style: TextStyle(color: AppColors.primaryBlack),
        ),
        centerTitle: true,
      ),
      body: (helpmodels != null)
          ? ListView(
              children: [
                for (var helpmodel in helpmodels!)
                  ExpansionTile(
                    textColor: Colors.black,
                    title: Text(helpmodel.name),
                    children: <Widget>[
                      ListTile(
                        title: Text(helpmodel.content),
                      ),
                    ],
                  ),
                SizedBox(
                  height: 400,
                ),
                // ... ваш остальной код
              ],
            )
          : Center(
              child:
                  CircularProgressIndicator()), // если helpmodels равно null, то показываем индикатор загрузки
    );
  }
}
