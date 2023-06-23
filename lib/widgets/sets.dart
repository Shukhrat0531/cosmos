import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/routes/routes.gr.dart';
import 'package:flutter/material.dart';

import '../pages/home/logic/data/model/genre.dart';

class Sets extends StatelessWidget {
  const Sets({super.key, required this.list});
  final List<SetModel> list;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context,index){
        var item = list[index];
        return
        InkWell(
            onTap: () {
              AutoRouter.of(context).push(SetsDetails());
              
            },
             child: Container(
              width: 156,
              height: 217,
              decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:  [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // color of shadow
                    spreadRadius: 5, // extent of shadow, in logical pixels
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]
                  
                  ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: Image.network(item.product.image),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 3),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Аренда",
                        style: TextStyle(
                            color: AppColors.primaryBottonBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 3),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        item.product.name,
                        style: TextStyle(
                            color: AppColors.primaryBottonBlue,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '4000 тг',
                        style: TextStyle(color: Color(0xFF6EBDFF)),
                      ),
                    ),
                  )
                
              
                     
                     
             
                   ],
                 ),
             ),
           );
      });
  }
}
