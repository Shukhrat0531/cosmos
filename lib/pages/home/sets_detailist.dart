import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../const/const.dart';
import '../../widgets/customer_button.dart';
import '../../widgets/day.dart';

class SetsDetails extends StatelessWidget {
  const SetsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/Clip path group.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          appBar: AppBar(
            leading: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primaryBottonBlue,
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Назад",
                  style: TextStyle(color: AppColors.primaryBottonBlue),
                ),
              ),
              SizedBox(
                width: 255,
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.grey,
                ),
              ),
            ],
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            title: Text("Спорт"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
              
               Container(
                decoration: BoxDecoration(color: AppColors.primaryWhite),
                height: 300,
                child: Column(
                  children: [
                     Container(
                        width: 375,
                        height: 220,
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 55, right: 55),
                            child: Image.asset(
                              'assets/images/image 2.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 25),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Сет 4: PlayStation 5",
                              style: TextStyle(
                                  color: AppColors.primaryBottonBlue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                  ],
                ),
               ),
                SizedBox(
                  height: 40,
                ),
                Day(),
                Day(),
                Day(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Описание",
                          style: TextStyle(
                              color: AppColors.primaryWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.w600))),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                          "Консоль PS5 открывает новые игровые возможности, о которых вы даже не могли мечтать. Молниеносная скорость загрузки обеспечивается благодаря сверхскоростному накопителю SSD, невероятный эффект погружения благодаря тактильной отдаче, адаптивным спусковым кнопкам и 3D-звуку, а также потрясающие игры нового поколения для PlayStation.",
                          style: TextStyle(
                              color: AppColors.primaryWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.w600))),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        height: MediaQuery.of(context).size.height * .50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Выберите количество суток',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width: 20,),
                                   Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                        onPressed: () => Navigator.pop(context),
                                        icon: Icon(Icons.close)),
                                  ),
                                  
                                ],
                              ),
                             
                              SizedBox(height:20,),
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 96,
                                      width: 96,
                                      child: Image.asset('assets/images/image 2.png'),
                                    ),
                                    Text("Сет 4: PlayStation 5",style: TextStyle(fontSize: 18),),
                                    
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                            MyButtonGroups(),
                            SizedBox(height: 15),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Итого:',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900),),
                                Text(
                                    '3 000 ₸',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900),
                                  ),
                              ],
                             ),
                             SizedBox(height: 15,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 46,
                                  width: 163,
                                  decoration: BoxDecoration(color: Color(0xFF6EB841),borderRadius: BorderRadius.circular(10)),
                                  child: TextButton(onPressed: (){},
                                   
                                   child: Text("Оформить сейчас",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w600),),
                                   
                                   ),
                                ),
                                SizedBox(width: 16,),
                                 Container(
                                    height: 46,
                                    width: 163,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF3175ED),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Добавить в корзину",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  )
                              ],
                             )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                width: 335,
                height: 46,
                decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.cartShopping,
                      color: AppColors.primaryBottonBlue,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Добавить в корзину',
                      style: TextStyle(
                          color: AppColors.primaryBottonBlue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
