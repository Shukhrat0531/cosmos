import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';

import 'favorites_card.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryWhite,
        leadingWidth: 220,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10,left: 20),
          child: Text("Избранные",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: AppColors.primaryBlack),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Align(
          alignment: Alignment.topCenter,
          child: Wrap(
            spacing: 20,
            runSpacing: 15,
            children: [
              FavCard(),
              FavCard(),
              FavCard(),
            ],
          ),
        ),
      ),
    );
  }
}