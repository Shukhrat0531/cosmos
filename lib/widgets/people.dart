import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';
import 'package:flutter/material.dart';

class People extends StatefulWidget {
  final ValueChanged<int> onGenderSelected;

  const People({Key? key, required this.onGenderSelected}) : super(key: key);

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  Widget buildGenderButton({
    required String label,
    required bool isSelected,
    required VoidCallback onPressed,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: isSelected ? Colors.white : AppColors.primaryBlue,
        side: BorderSide(color: isSelected ? Colors.white : Colors.transparent),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildGenderButton(
          label: '${context.localized.male}',
          isSelected: isMaleSelected,
          onPressed: () {
            setState(() {
              isMaleSelected = true;
              isFemaleSelected = false;
            });
            widget.onGenderSelected(1); // отправляем данные обратно
          },
        ),
        SizedBox(
          width: 7,
        ),
        buildGenderButton(
          label: '${context.localized.female}',
          isSelected: isFemaleSelected,
          onPressed: () {
            setState(() {
              isMaleSelected = false;
              isFemaleSelected = true;
            });
            widget.onGenderSelected(2); // отправляем данные обратно
          },
        ),
      ],
    );
  }
}
