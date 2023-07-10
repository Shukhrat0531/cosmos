import 'package:auto_route/auto_route.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cosmos/pages/home/logic/bloc/home_bloc.dart';
import 'package:cosmos/pages/home/logic/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../const/const.dart';
// import '../pages/home/game_detailist/game_detailist.dart';
import '../routes/routes.gr.dart';

class CategorySlider extends StatefulWidget {
  const CategorySlider({super.key});

  @override
  State<CategorySlider> createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  int pageIndex = 0;


  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreBloc, GenreState>(
      builder: (context, state){
        if(state is GenresError) {
          return Container();
        } else if(state is GenresSuccess){
         final generels =  state.genres;
         return Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                    viewportFraction: 0.3,
                    height: 53,
                    enableInfiniteScroll: false,
                    padEnds: false),
                items: generels.map((item) {
                  return InkWell(
                    onTap: () {
                      context.router.push(Slider_details(id: item.id,));
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
              CarouselIndicator(
                color: Color(0xFFCCCCCC),
                activeColor: AppColors.primaryBottonBlue,
                count: generels.length,
                index: pageIndex,
              ),
            ],
          );
        } else {
          return Center();
        }
        
      },
    );
  }
}
