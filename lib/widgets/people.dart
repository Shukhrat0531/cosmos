import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';



class People extends StatefulWidget {
  const People({super.key});

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
        backgroundColor: isSelected ? Colors.white:AppColors.primaryBlue ,
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
          label: 'Мальчик',
          isSelected: isMaleSelected,
          onPressed: () {
            setState(() {
              isMaleSelected = true;
              isFemaleSelected = false;
            });
          },
        ),
        SizedBox(width: 7,),
        buildGenderButton(
          label: 'Девочка',
          isSelected: isFemaleSelected,
          onPressed: () {
            setState(() {
              isMaleSelected = false;
              isFemaleSelected = true;
            });
          },
        ),
      ],
    );
    
  }
}
