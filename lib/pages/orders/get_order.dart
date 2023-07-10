import 'package:auto_route/auto_route.dart';
import 'package:cosmos/locals.dart';
import 'package:cosmos/pages/orders/bloc/ored_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/const.dart';
import '../../routes/routes.gr.dart';
import '../cart/cart_item.dart';
import '../cart/logic/cart_item_model.dart';
import 'get_item.dart';


class GetOrder extends StatefulWidget {
  const GetOrder({super.key, required this.item,  });
  final List<CreateOrderProductModel> item;
  
  @override
  State<GetOrder> createState() => _GetOrderState();
}

class _GetOrderState extends State<GetOrder> {
  bool isChecked = true;
  
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
          GetCartItem(item: widget.item[0],),
        //  CartItem(item:widget.item,onPressed: () {},),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
                "Стоимость доставки:\nПо городу:  бесплатно \nЗа городом: менеджер сообщит по \nтелефону ",
                style: TextStyle(color: AppColors.primaryWhite),),
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
                decoration: BoxDecoration(color: AppColors.primaryWhite),
                child: TextButton(
                  onPressed: () async {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  height:
                                      MediaQuery.of(context).size.height * .35,
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
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Checkbox(
                                                  checkColor: Colors
                                                      .white, // color of tick Mark
                                                  activeColor: AppColors
                                                      .primaryBottonBlue,
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
                                              Text(
                                                  "Г. Алматы, Желтоксан 35, 39"),
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
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .15,
                                                          child: Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 10,
                                                                      left: 20),
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      SizedBox(
                                                                        width:
                                                                            10,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .edit,
                                                                        color: AppColors
                                                                            .primaryBottonBlue,
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            15,
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
                                                                        width:
                                                                            10,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .delete,
                                                                        color: AppColors
                                                                            .primaryBottonBlue,
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            15,
                                                                      ),
                                                                      Text(
                                                                          "Удалить"),
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
                                              IconButton(
                                                onPressed: (){
                                                  context.router.push(GetContinue());
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  color:
                                                      AppColors.primaryBottonBlue,
                                                ),
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
                                              color:
                                                  AppColors.primaryBottonBlue,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
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
                  child: Text("${context.localized.setAddress}",style: TextStyle(color: AppColors.primaryBottonBlue),))),
            ),
          )
        ],
      ),
    )
    ]
    );
  }
}
