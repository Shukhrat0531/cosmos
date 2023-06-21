import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';
import 'package:cosmos/pages/home/home_providers_wrapper.dart';
import 'package:cosmos/pages/home/logic/bloc/home_bloc.dart';
import 'package:cosmos/pages/home/logic/bloc/home_event.dart';
import 'package:cosmos/pages/home/logic/bloc/home_state.dart';
import 'package:cosmos/widgets/call_chat.dart';
import 'package:cosmos/widgets/sets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/category_are.dart';
import '../../widgets/category_slider.dart';
// import '../favorites/favorites.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  int pageIndex = 0;

  final List<String> imgList = [
    'assets/images/mob-ps(1) 1.png',
    'assets/images/mob-ps(1) 1.png',
    'assets/images/mob-ps(1) 1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return HomeProviders(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/Clip path group.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text("${context.localized.main}"),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top:
                            0), // Должно соответствовать высоте верхнего контейнера
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 23, right: 23),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            BlocBuilder<GenreBloc, GenreState>(
                              builder:(context, state){
                                return CarouselSlider(
                                options: CarouselOptions(
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      pageIndex = index;
                                    });
                                  },
                                  enlargeCenterPage: true,
                                  height: 155,
                                  viewportFraction: 1.0,
                                ),
                                items: imgList.map((item) {
                                  return Container(
                                    width: 355,
                                    margin: EdgeInsets.only(),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Image.asset(
                                        '$item',
                                        fit: BoxFit.cover,
                                      ), 
                                    ),
                                  );
                                }).toList(),
                              );}
                            ),
                            CarouselIndicator(
                              color: Color(0xFFCCCCCC),
                              activeColor: AppColors.primaryBottonBlue,
                              count: imgList.length,
                              index: pageIndex,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "${context.localized.games}",
                                  style: TextStyle(
                                      color: AppColors.primaryWhite,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            CategorySlider(),
                            SizedBox(
                              height: 5,
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "${context.localized.arenda}",
                                  style: TextStyle(
                                      color: AppColors.primaryWhite,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            CategoryAr(),
                            SizedBox(
                              height: 17,
                            ),
                            CallChat(),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Сеты",
                                  style: TextStyle(
                                      color: AppColors.primaryWhite,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Wrap(
                              spacing: 22,
                              runSpacing: 20,
                              children:[
                                 Sets(),
                                 Sets()
                              ]),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
