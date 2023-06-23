// import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:pinput/pinput.dart';

import '../../dependencies/getIt.dart';
import 'logic/bloc/auth_bloc.dart';

class AuthConf extends StatefulWidget {
  const AuthConf({super.key, required this.smsFor, required this.phoneNumber});
  final String smsFor;
  final String phoneNumber;
  @override
  State<AuthConf> createState() => _AuthConfState();
}

class _AuthConfState extends State<AuthConf> {
  late Future<void> futureWait;
  @override
  void initState() {
    super.initState();
    futureWait = Future.delayed(Duration(seconds: 59)); // задержка в 59 секунд
  }

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
        color: AppColors.primaryWhite,
        border: Border.all(color: Color.fromRGBO(255, 255, 255, 1)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(255, 255, 255, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Color.fromRGBO(176, 176, 178, 1),
      ),
    );
    String _pinCode = "";
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
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
                padding: const EdgeInsets.only(top: 60),
                child: Center(
                    child: Text(
                  "${context.localized.smsVer}",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryWhite),
                )),
              ),
              SizedBox(
                height: 30,
              ),
              Pinput(
                onCompleted: (value) => _pinCode = value,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
              SizedBox(
                height: 15,
              ),
              // FutureBuilder(
              //   future: futureWait,
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       // Возвращает счетчик времени в формате mm:ss
              //       return CountdownTimer(
              //         endTime:
              //             DateTime.now().millisecondsSinceEpoch + 1000 * 59,
              //         widgetBuilder: (_, CurrentRemainingTime? time) {
              //           if (time == null) return Container();
              //           return Text(
              //               'Повторно запросить SMS-код\n можно через ${time.sec} секунд');
              //         },
              //       );
              //     } else {
              //       // Перенаправление на другую страницу после таймера
              //       WidgetsBinding.instance.addPostFrameCallback((_) {
              //         context.router.pushNamed('/Confirmation');

              //         ;
              //       });
              //       return Container();
              //     }
              //   },
              // ),
              SizedBox(
                height: 40,
              ),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is SmsFailed) {
                      setState(() {
                         state.message;
                      });
                    } else if (state is SmsSuccess) {
                      context.router.pushNamed('/main-widget');
                    }
                  },
                
                builder: (context, state){
                  if (state is SmsLoading) {
                  
                   return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primaryWhite,
                      minimumSize: Size(325, 60),
                    ),
                    onPressed: () {
                      context.read<AuthBloc>().add(SendSms(
                        widget.phoneNumber,
                         _pinCode,
                        widget.smsFor as String));
                    },
                    child: Text(
                      "${context.localized.signIn}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryBlack),
                    ),
                  );
                  
                }
                return
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.primaryWhite,
                    minimumSize: Size(325, 60),
                  ),
                  onPressed: () {
                    context.read<AuthBloc>().add(SendSms(
                        widget.phoneNumber, _pinCode, widget.smsFor ));
                  },
                  child: Text(
                    "${context.localized.signIn}",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryBlack),
                  ),
                );
                
                }
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
