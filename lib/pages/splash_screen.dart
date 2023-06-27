import 'package:auto_route/auto_route.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes/routes.gr.dart';


Widget slideContent(String imagePath, String slideTitle) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 100,),
        Center(
          child: Container(
            width: 272,
            height: 262,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  slideTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryBottonBlue,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    
    ),
  );
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      int next = _controller.page!.round();

      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
  final List<Widget> _pages = [
    slideContent('assets/images/Group 79162.png', '${context.localized.ferst_splash}'),
    slideContent('assets/images/Group 79165.png', '${context.localized.second_splash}'),
    slideContent('assets/images/Group 79171.png', '${context.localized.third_splash}'),
  ];

 
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.primaryBlue),
        actions: [
          TextButton(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text('${context.localized.all_next}',
                  style: TextStyle(
                      color: AppColors.primaryBottonBlue,fontSize: 18)),
            ), // Добавьте стиль текста, чтобы поменять цвет
            onPressed: () {
              context.router.pushNamed('/main-widget');
             
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: _controller,
                children: _pages,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CarouselIndicator(
                    count: _pages.length,
                    index: _currentPage,
                    color: Colors.grey,
                    activeColor: AppColors.primaryBottonBlue,
                  ),
                  TextButton(
                    child: Text('${context.localized.next}  ➔',style: TextStyle(color: AppColors.primaryBottonBlue,fontSize: 18,fontWeight: FontWeight.bold),),
                    onPressed: () {
                      if (_currentPage < (_pages.length - 1)) {
                        _controller.animateToPage(
                          _currentPage + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        );
                      } else {
                        context.router.pushNamed("/Authorization");
                      }
                    },
                  ),
                  
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
