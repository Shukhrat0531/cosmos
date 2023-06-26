import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavCard extends StatelessWidget {
  const FavCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: InkWell(
          onTap: () {
            // AutoRouter.of(context).push(SetsDetails(id: ));
          },
          child: Container(
            width: 156,
            height: 190,
            decoration: BoxDecoration(
                color: AppColors.primaryWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // color of shadow
                    spreadRadius: 5, // extent of shadow, in logical pixels
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      child: Image.asset('assets/images/image.png'),
                    ),
                    Positioned(
                      right: 7,
                      top: 8,
                      child: SvgPicture.asset('assets/images/serd_tol.svg'))
                  ],
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 3),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'PlayStation 4 Pro',
                      style: TextStyle(
                          color: AppColors.primaryBottonBlue,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            '4000 тг',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                    
                      Container(
                        width: 43,
                        height: 30,
                        decoration: BoxDecoration(color: Color(0xFFFECF55),borderRadius: BorderRadius.circular(5)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "249 Б",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
