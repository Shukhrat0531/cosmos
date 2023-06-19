import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../const/const.dart';

class MenuHelp extends StatelessWidget {
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
      body: 
            ListView(
              children: [
                ExpansionTile(
                  textColor: Colors.black,
                  title: Text('Вопрос 1'),
                  
                  children: <Widget>[
                    ListTile(
                      title: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  textColor: Colors.black,
                  title: Text('Вопрос 2'),
                 
                  children: <Widget>[
                    ListTile(
                      title: Text('Ответ на вопрос 2Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
                    ),
                  ],
                ),
                SizedBox(height: 400,),
                 Column(
              children: [
                Container(
                  width: 335,
                  height: 46,
                  decoration: BoxDecoration(
                      color: Color(0xFF0088CC),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.telegram,
                        color: AppColors.primaryWhite,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Написать в Telegram',
                        style: TextStyle(
                            color: AppColors.primaryWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9,),
                Container(
            width: 335,
            height: 46,
            decoration: BoxDecoration(
                color: Color(0xFF0AAB39),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.whatsapp,
                  color: AppColors.primaryWhite,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Написать в Whatsapp',
                  style: TextStyle(
                      color: AppColors.primaryWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
              ],
            ),
                // Добавьте больше ExpansionTile виджетов здесь для дополнительных вопросов
              ],
            ),
         
           
         
    );
  }
}
