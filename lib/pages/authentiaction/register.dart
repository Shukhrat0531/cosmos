// import 'package:auto_route/auto_route.dart';
// import 'package:bord/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
// import 'package:cosmos/pages/authentiaction/real_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../dependencies/getIt.dart';
import '../../routes/routes.gr.dart';
import 'logic/bloc/auth_bloc.dart';

// import 'package:bord/pages/regestration/register.dart';
// import 'package:pinput/pinput.dart';
class Authorization extends StatefulWidget {
  const Authorization({super.key});

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  TextEditingController controller = TextEditingController();

  final TextEditingController _phoneNumber =
      MaskedTextController(mask: '+7 (000) 000-00-00', text: '7');
    String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Clip path group.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: IconButton(
                icon: Icon(Icons.arrow_back,
                    color: const Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 20),
                child: TextButton(
                  onPressed: () {
                    context.router.pushNamed('/Regestration');
                  },
                  child: Text('${context.localized.register}',
                      style: TextStyle(
                          color: AppColors.primaryWhite, fontSize: 16)),
                ),
              ),
            ],
          ),
          body: Container(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Center(
                        child: Text(
                      "${context.localized.signIn}",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryWhite),
                    )),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 325,
                    height: 50,
                    child: TextField(
                      controller: _phoneNumber,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        hintText: "747 870 77 44",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                    if( state is LoginSuccess){
                      context.router.push(AuthConf(smsFor: "1", phoneNumber: _phoneNumber.text));
                    }else if (state is LoginFailed){
                      setState(() {
                          errorMessage = state.message.toString();
                          print(state.message);
                        });
                    }
                        
                    
                             
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors
                              .primaryWhite, // Изменяем цвет в соответствии с состоянием
                          minimumSize: Size(325, 60),
                        ),
                        // onPressed: () => context.router.push(AuthConf(smsFor: '1', phoneNumber: _phoneNumber.text)),
                        onPressed: () => context.read<AuthBloc>().add(LoginUser(
                          phone:_phoneNumber.text
                        )),
                        child: Text(
                          "${context.localized.next}",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 25,),
                  Text(errorMessage,style: TextStyle(color: Colors.red),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
