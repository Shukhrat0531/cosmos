import 'package:cosmos/pages/home/sets_details/product_bloc_wrapper.dart';
import 'package:cosmos/pages/home/sets_details/sets_bloc.dart';
import 'package:cosmos/pages/home/sets_details/show_modal.dart';
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
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              if (state is ProductFailure) {
                return Text("error");
              } else if (state is ProductSecces) {
                final products = state.product;
                return Scaffold(
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
                  body: SingleChildScrollView(
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
                                      products.name,
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
                                      "${state.product.prices[0].daysCount} сутки - ${state.product.prices[0].price} ₸",
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
                                      child: Text(
                                          "${state.product.prices[0].bonus}"),
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
                                      "${state.product.prices[1].daysCount} сутки - ${state.product.prices[1].price} ₸",
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
                                      "${state.product.prices[2].daysCount} сутки - ${state.product.prices[2].price} ₸",
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
                                      child: Text(
                                          "${state.product.prices[2].bonus}"),
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
                  ),
                  floatingActionButton: ShowModal(products: products)
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
