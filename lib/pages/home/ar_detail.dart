import 'package:cosmos/widgets/sets.dart';
import 'package:flutter/material.dart';

class ArDetail extends StatelessWidget {
  const ArDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/Group 79155.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text("Спорт"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Wrap(spacing: 25, runSpacing: 20, children: [
                  //  Sets(),
                  //  Sets(),
                  //  Sets(),
                  //  Sets(),
                  //  Sets(),
                  //  Sets(),
                  ]),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}