import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../const/const.dart';
import '../../routes/routes.gr.dart';
import '../cart/cart_item.dart';


class GetOrder extends StatefulWidget {
  const GetOrder({super.key});

  @override
  State<GetOrder> createState() => _GetOrderState();
}

class _GetOrderState extends State<GetOrder> {
  
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
          'Способ получения',
          style: TextStyle(color: AppColors.primaryBlack),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          CartItem(),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
                "Стоимость доставки:\nПо городу:  бесплатно \nЗа городом: менеджер сообщит по \nтелефону "),
          ),
          SizedBox(height: 30,),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                
              },
              child: Container(
                height: 35,
                width: 335,
                decoration: BoxDecoration(border: Border.all(width: 1,color: AppColors.primaryBottonBlue)),
                child: TextButton(
                  onPressed: () async {
                    showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              String city = '';
                              String street = '';
                              String building = '';
                              String apartment = '';

                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                height:
                                    MediaQuery.of(context).size.height * .45,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Добавьте адрес доставки',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: IconButton(
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                                icon: Icon(Icons.close)),
                                          ),
                                        ],
                                      ),
                                      TextField(
                                        onChanged: (value) => city = value,
                                        decoration: InputDecoration(
                                          labelText: 'Город',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey, // Цвет границы
                                              width: 1.0, // Ширина границы
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    15.0)), // Радиус границы
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey, // Цвет границы
                                              width: 1.0, // Ширина границы
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    25.0)), // Радиус границы
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                      TextField(
                                        onChanged: (value) => street = value,
                                        decoration: InputDecoration(
                                          labelText: 'Улица, район',
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey, // Цвет границы
                                              width: 1.0, // Ширина границы
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    15.0)), // Радиус границы
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  Colors.grey, // Цвет границы
                                              width: 1.0, // Ширина границы
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    25.0)), // Радиус границы
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                      Row(
                                        children: [
                                          Expanded(
                                            child:  TextField(
                                              onChanged: (value) =>
                                                  building = value,
                                              decoration: InputDecoration(
                                                labelText: 'Дом',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors
                                                        .grey, // Цвет границы
                                                    width:
                                                        1.0, // Ширина границы
                                                  ),
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(
                                                          15.0)), // Радиус границы
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors
                                                        .grey, // Цвет границы
                                                    width:
                                                        1.0, // Ширина границы
                                                  ),
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(
                                                          25.0)), // Радиус границы
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width:
                                                  10), // Добавьте пространство между полями
                                          Expanded(
                                            child: TextField(
                                              onChanged: (value) =>
                                                  apartment = value,
                                              decoration: InputDecoration(
                                                labelText: 'Квартира',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors
                                                        .grey, // Цвет границы
                                                    width:
                                                        1.0, // Ширина границы
                                                  ),
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(
                                                          15.0)), // Радиус границы
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors
                                                        .grey, // Цвет границы
                                                    width:
                                                        1.0, // Ширина границы
                                                  ),
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(
                                                          25.0)), // Радиус границы
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Container(
                                        width: 355,
                                        height: 56,
                                        decoration: BoxDecoration(color: AppColors.primaryBottonBlue,borderRadius: BorderRadius.circular(15)),
                                        child: TextButton(
                                          onPressed: () {
                                            context.router.push(GetContinue());
                                            Navigator.pop(context, {
                                              'city': city,
                                              'street': street,
                                              'building': building,
                                              'apartment': apartment,
                                            });
                                          },
                                          child: Text('Сохранить',style: TextStyle(color: AppColors.primaryWhite,fontSize: 16,fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                            );
                  }, 
                  child: Text("Указать адрес доставки",style: TextStyle(color: AppColors.primaryBottonBlue),))),
            ),
          )
        ],
      ),
    );
  }
}
