import 'package:auto_route/auto_route.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../const/const.dart';
import '../pages/home/logic/bloc/home_bloc.dart';
import '../pages/home/logic/bloc/home_state.dart';
import '../routes/routes.gr.dart';

class CategoryAr extends StatefulWidget {
  const CategoryAr({super.key});

  @override
  State<CategoryAr> createState() => _CategoryArState();
}

class _CategoryArState extends State<CategoryAr> {
  int pageIndex = 0;

  // final List<Map<String, String>> imgList = [
  //   {
  //     'image':
  //         'assets/images/ps-sports-games-collection-image-block-01-ps4-ps5-en-02jul21 1 (3).png',
  //     'category': 'Сеты'
  //   },
  //   {
  //     'image':
  //         'assets/images/ps-sports-games-collection-image-block-01-ps4-ps5-en-02jul21 1 (4).png',
  //     'category': 'Приставки'
  //   },
  //   {
  //     'image':
  //         'assets/images/ps-sports-games-collection-image-block-01-ps4-ps5-en-02jul21 1 (5).png',
  //     'category': 'Телевизоры'
  //   },
  //   {
  //     'image':
  //         'assets/images/ps-sports-games-collection-image-block-01-ps4-ps5-en-02jul21 1 (2).png',
  //     'category': 'Джойстики'
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreBloc, GenreState>(
      builder: (context, state) {
        if (state is GenresError) {
          return Text("database error");
        } else if (state is GenresSuccess) {
          final generels = state.arSliders;

          return Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: CarouselSlider(
                  options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
                      initialPage: 0,
                      viewportFraction: 0.3,
                      height: 53,
                      enableInfiniteScroll: false,
                      padEnds: false),
                  items: generels.map((item) {
                    return InkWell(
                      onTap: () {
                        context.router.push(ArDetail(id: item.id));
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 94,
                            margin: EdgeInsets.only(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.network(
                                '${item.image}',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 94,
                            height: 53,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromARGB(91, 0, 0, 0)),
                            child: Align(
                              child: Text(
                                "${item.name}",
                                style: TextStyle(
                                    color: AppColors.primaryWhite,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              CarouselIndicator(
                color: Color(0xFFCCCCCC),
                activeColor: AppColors.primaryBottonBlue,
                count: generels.length,
                index: pageIndex,
              ),
            ],
          );
          
        }else{
          return Center();
        }
      },
    );
  }
}
