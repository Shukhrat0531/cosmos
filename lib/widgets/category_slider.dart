import 'package:auto_route/auto_route.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../const/const.dart';
import '../routes/routes.gr.dart';

class CategorySlider extends StatefulWidget {
  const CategorySlider({super.key});

  @override
  State<CategorySlider> createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  int pageIndex = 0;

 final List<Map<String, String>> imgList = [
    {
      'image':
          'assets/images/ps-sports-games-collection-image-block-01-ps4-ps5-en-02jul21 1.png',
      'category': 'Спорт'
    },
    {
      'image':
           'assets/images/ps-sports-games-collection-image-block-01-ps4-ps5-en-02jul21 1 (1).png',
      'category': 'Файтинги'
    },
    {
      'image':
          'assets/images/ps-sports-games-collection-image-block-01-ps4-ps5-en-02jul21 1.png',
      'category': 'Стратегии'
    },
    {
      'image':
          'assets/images/ps-sports-games-collection-image-block-01-ps4-ps5-en-02jul21 1 (2).png',
      'category': 'Супергерои'
    },
  ];

  @override
  Widget build(BuildContext context) {
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
            padEnds: false
          ),
          items: imgList.map((item) {
            return InkWell(
              onTap: () {
                
               AutoRouter.of(context).push(GameDetailist());
              },
              child: Stack(
                children: [
                  Container(
                    width: 94,
                    margin: EdgeInsets.only(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset(
                        '${item['image']}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 94,
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(91, 0, 0, 0)
                    ),
                    child: Align(
                      child: Text("${item['category']}",style: TextStyle(color: AppColors.primaryWhite,fontWeight: FontWeight.w700),),
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
          count: imgList.length,
          index: pageIndex,
        ),
      ],
    );
  }
}
