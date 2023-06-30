


import 'package:cosmos/const/const.dart';
import 'package:cosmos/pages/home/logic/data/model/genre.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final PriceModel? groupValue;
  final VoidCallback onPressed;
  final PriceModel value;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.value,
    required this.groupValue,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    bool isActive = widget.groupValue?.id == widget.value.id;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Column(
          children: [
            Text(
              widget.value.daysCount.toString(),
              style: TextStyle(fontSize: 18),
            ),
            Text(
              widget.value.price.toString(),
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: isActive
              ? AppColors.primaryBottonBlue
              : Color(0xFFC7C7C7), // change the color based on the active state
          onPrimary: isActive ? Colors.white : Colors.black,
          minimumSize: Size(100, 50),
        ),
      ),
    );
  }
}

// GroupButton(
//     isRadio: true,
//     spacing: 10,
//     onSelected: (index, isSelected) => print('$index button is selected'),
//     buttons: ["12:00", "13:00", "14:30", "18:00", "19:00", "21:40"],
// );