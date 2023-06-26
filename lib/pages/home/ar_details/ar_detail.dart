import 'package:auto_route/auto_route.dart';
import 'package:cosmos/pages/home/ar_details/ar_bloc.dart';
import 'package:cosmos/pages/home/ar_details/ar_detail_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../const/const.dart';
import '../../../routes/routes.gr.dart';

class ArDetail extends StatelessWidget {
  const ArDetail({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/Group 79155.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        ArendBlocWrapper(
          event: PlasLoaded(id),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text("Спорт"),
            ),
            body: BlocBuilder<ArendaBloc, ArendaState>(
              builder: (context, state) {
                if (state is PlasLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is PlasFailure) {
                  return Text("error");
                } else if (state is PlasSecces) {
                  final list = state.arends;
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                          child:
                            GridView.builder(
                                itemCount: list.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 156 / 217,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                                itemBuilder: (context, index) {
                                  var item = list[index];
                                  print(item.product.images);
                                  return InkWell(
                                    onTap: () {
                                     AutoRouter.of(context).push(SetsDetails(id: item.product.id));
                                    },
                                    child: Container(
                                      width: 156,
                                      height: 217,
                                      decoration: BoxDecoration(
                                          color: AppColors.primaryWhite,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  0.5), // color of shadow
                                              spreadRadius:
                                                  5, // extent of shadow, in logical pixels
                                              blurRadius: 7, // blur radius
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ]),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 169,
                                            height: 158,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 10),
                                              child: Image.network(
                                                  item.product.cover),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, bottom: 3),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "Аренда",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .primaryBottonBlue,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, bottom: 3),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                item.product.name,
                                                style: TextStyle(
                                                    color: AppColors
                                                        .primaryBottonBlue,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "4000",
                                                style: TextStyle(
                                                    color: Color(0xFF6EBDFF)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                })
                         
                        )
                      ],
                    ),
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
          ),
        )
      ],
    );
  }
}
