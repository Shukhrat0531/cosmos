// import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../routes/routes.gr.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(69, 69, 69, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(192, 193, 194, 1)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Color.fromRGBO(176, 176, 178, 1),
      ),
    );

    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Clip path group.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 15),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.primaryWhite,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                "СМС подтверждение",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400,color: AppColors.primaryWhite),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
            ),
            TextButton(
              child: Text('Отправить код ещё раз '),
              onPressed: () {
                //  Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) =>
                //           AuthConf()), // замените MainScreen на ваш главный экран
                // );
              },
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary:AppColors.primaryWhite,
                minimumSize: Size(325, 60),
              ),
              onPressed: () {
                context.router.push(MainWidget());
              },
              child: Text(
                "Войти",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: AppColors.primaryBlack),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
