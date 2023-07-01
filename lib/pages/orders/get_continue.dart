import 'package:auto_route/auto_route.dart';
import 'package:cosmos/locals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/const.dart';
import '../../routes/routes.gr.dart';
import '../cart/cart_item.dart';

class GetContinue extends StatefulWidget {
  const GetContinue({super.key});

  @override
  State<GetContinue> createState() => _GetContinueState();
}

class _GetContinueState extends State<GetContinue> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return
     Stack(children: [
      Image.asset(
        "assets/images/Clip path group.png",
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
      ),
     Scaffold(
      backgroundColor: Colors.transparent,
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
              "${context.localized.back}",
              style: TextStyle(color: AppColors.primaryBottonBlue),
            ),
          ],
        ),
        title: Text(
          '${context.localized.orderMethod}',
          style: TextStyle(color: AppColors.primaryBottonBlue),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          
          // CartItem(),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
                "Стоимость доставки:\nПо городу:  бесплатно \nЗа городом: менеджер сообщит по \nтелефону ",
                style: TextStyle(color: AppColors.primaryWhite),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Text('Г. Алматы, Желтоксан 35, 39',
                    style: TextStyle(color: AppColors.primaryWhite),
                  ),
          
                 TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            height: MediaQuery.of(context).size.height * .35,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Выберите адрес доставки',
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
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Divider(color: Colors.grey),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Checkbox(
                                            checkColor: Colors
                                                .white, // color of tick Mark
                                            activeColor:
                                                AppColors.primaryBottonBlue,
                                            //fill color when checkbox is checked
                                            value:
                                                isChecked, // whether checkbox is checked or not
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                          ),
                                        ),
                                        Text("Г. Алматы, Желтоксан 35, 39"),
                                        SizedBox(
                                          width: 35,
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            showModalBottomSheet(
                                                context: context,
                                                builder: (context) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                20)),
                                                    height: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        .15,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.bottomCenter,
                                                      child: Padding(
                                                        padding: EdgeInsets.only(
                                                            top: 10, left: 20),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Icon(
                                                                  Icons.edit,
                                                                  color: AppColors
                                                                      .primaryBottonBlue,
                                                                ),
                                                                SizedBox(
                                                                  width: 15,
                                                                ),
                                                                Text(
                                                                    "Редактировать"),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Icon(
                                                                  Icons.delete,
                                                                  color: AppColors
                                                                      .primaryBottonBlue,
                                                                ),
                                                                SizedBox(
                                                                  width: 15,
                                                                ),
                                                                Text("Удалить"),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                          icon: SvgPicture.asset(
                                              'assets/images/Group 79058.svg'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(color: Colors.grey),
                                  Container(
                                    height: 60,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(
                                          Icons.add,
                                          color: AppColors.primaryBottonBlue,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text("Добавить новый адрес"),
                                        SizedBox(
                                          width: 60,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                              'assets/images/Group 79058.svg'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 355,
                                    height: 56,
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryBottonBlue,
                                        borderRadius: BorderRadius.circular(15)),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Выбрать',
                                        style: TextStyle(
                                            color: AppColors.primaryWhite,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    'Изменить адрес',
                    style: TextStyle(color: AppColors.primaryWhite),
                  ),
                )
              ],
            ),
          ),
           
          
        
        ],
      ),
      floatingActionButton: InkWell(
        onTap: () {
          AutoRouter.of(context).push(PayOrder());
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
              Text(
                'Оформить заказ',
                style: TextStyle(
                    color: AppColors.primaryBottonBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    )
     ]
     );
  }
}
