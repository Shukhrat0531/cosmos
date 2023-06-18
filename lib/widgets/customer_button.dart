


import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';
class MyButtonGroups extends StatefulWidget {
  @override
  _MyButtonGroupsState createState() => _MyButtonGroupsState();
}

class _MyButtonGroupsState extends State<MyButtonGroups> {
  int _activeButtonIndex = 0;

  void _setActiveButton(int index) {
    setState(() {
      _activeButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var i = 0; i < 3; i++)
              CustomButton(
                days: '${i + 1} сутки',
                money: '${(i + 1) * 3000} тенге',
                isActive: i == _activeButtonIndex,
                onPressed: () => _setActiveButton(i),
              ),
          ],
        ),
         
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String days;
  final String money;
  final bool isActive;
  final VoidCallback onPressed;

  CustomButton({
    required this.days,
    required this.money,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Column(
          children: [
            Text(days,style: TextStyle(fontSize: 18),),
            Text(money,style: TextStyle(fontSize: 14),),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: isActive
              ? AppColors.primaryBottonBlue
              : Color(0xFFC7C7C7), // change the color based on the active state
          onPrimary: isActive? Colors.white :Colors.black,
          minimumSize: Size(100, 50),
        ),
      ),
    );
  }
}
