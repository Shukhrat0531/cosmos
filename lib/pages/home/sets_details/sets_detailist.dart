import 'package:cosmos/pages/home/sets_details/product_bloc_wrapper.dart';
import 'package:cosmos/pages/home/sets_details/sets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../const/const.dart';
import '../../../widgets/customer_button.dart';
import '../../../widgets/day.dart';

class SetsDetails extends StatelessWidget {
  const SetsDetails({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/Clip path group.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        ProductBlocWrapper(
          id: id,
          child: Scaffold(
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
                  onPressed: () {},
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
            body: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductFailure) {
                  return Text("error");
                } else if (state is ProductSecces) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          decoration:
                              BoxDecoration(color: AppColors.primaryWhite),
                          height: 300,
                          child: Column(
                            children: [
                              Container(
                                width: 375,
                                height: 220,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left: 55,
                                        right: 55),
                                    child: Image.network(
                                      // if(state.product.images.isNotempty){
                                      //   state.product.images[0]
                                      // }
                                      state.product.images[0],
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 25),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      state.product.name,
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
                        Column(
                          children: [
                            Container(
                              height: 30,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "1 сутки - 5 000 ₸",
                                      style: TextStyle(
                                          color: AppColors.primaryWhite,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: AppColors.primaryWhite,
                                        onPrimary: AppColors.primaryBottonBlue,
                                        minimumSize: Size(112, 25),
                                      ),
                                      onPressed: () {},
                                      child: Text("249 Б"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2 сутки - 6 000 ₸",
                                      style: TextStyle(
                                          color: AppColors.primaryWhite,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: AppColors.primaryWhite,
                                        onPrimary: AppColors.primaryBottonBlue,
                                        minimumSize: Size(112, 25),
                                      ),
                                      onPressed: () {},
                                      child: Text("349 Б"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "3 сутки - 7 000 ₸",
                                      style: TextStyle(
                                          color: AppColors.primaryWhite,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: AppColors.primaryWhite,
                                        onPrimary: AppColors.primaryBottonBlue,
                                        minimumSize: Size(112, 25),
                                      ),
                                      onPressed: () {},
                                      child: Text("449 Б"),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
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
                              child: Text(state.product.description,
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
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
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
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Выберите количество суток',
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 96,
                                        width: 96,
                                        child: Image.asset(
                                            'assets/images/image 2.png'),
                                      ),
                                      Text(
                                        "Сет 4: PlayStation 5",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                MyButtonGroups(),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Итого:',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      '3 000 ₸',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 46,
                                      width: 163,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF6EB841),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Оформить сейчас",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
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
        ),
      ],
    );
  }
}
