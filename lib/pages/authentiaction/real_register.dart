// import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/locals.dart';
import 'package:cosmos/pages/authentiaction/reapit_conf.dart';
import 'package:cosmos/routes/routes.gr.dart';
// import 'package:cosmos/pages/authentiaction/reapit_conf.dart';
import 'package:cosmos/widgets/people.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../dependencies/getIt.dart';
import 'logic/bloc/auth_bloc.dart';

class Regestration extends StatefulWidget {
  const Regestration({Key? key}) : super(key: key);

  @override
  State<Regestration> createState() => _RegestrationState();
}

class _RegestrationState extends State<Regestration> {
  final maskFormatter = new MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"7": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  late final TextEditingController _name;
  late final TextEditingController _surname;
  late final TextEditingController _patronymic;
  late final TextEditingController _year_of_birth;
  late final TextEditingController _promo_code;
  late final TextEditingController _full_name;
  
  final TextEditingController _phoneNumber =
      MaskedTextController(mask: '+7 (000) 000-00-00', text: '7');

  late final TextEditingController _gender;
   bool term_and_condition = false;

  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
    _surname = TextEditingController();
    _patronymic = TextEditingController();
    _year_of_birth = TextEditingController();
    _promo_code = TextEditingController();
    _gender = TextEditingController();
    _full_name = TextEditingController();
  }

  @override
  void dispose() {
    _phoneNumber.dispose();
    _name.dispose();
    _surname.dispose();
    _patronymic.dispose();
    _year_of_birth.dispose();
    _promo_code.dispose();

    super.dispose();
  }

  void splitNameSurnamePatronymic(String input) {
    List<String> parts = input.split(' ');
    if (parts.length >= 3) {
      _name.text = parts[0];
      _surname.text = parts[1];
      _patronymic.text = parts[2];
    } else {
      print('Пожалуйста, введите полностью имя, фамилию и отчество.');
    }
  }

  @override
  Widget build(BuildContext context) {
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
              Row(
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Center(
                    child: Text(
                  "${context.localized.register}",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 325,
                height: 50,
                child: TextField(
                  onChanged: (value) {
                    splitNameSurnamePatronymic(value);
                  },
                  controller: _full_name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    hintText: "ФИО",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 325,
                height: 50,
                child: TextField(
                  controller: _year_of_birth,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    hintText: "Год рождения",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Text(
                      "${context.localized.gender}:   ",
                      style: TextStyle(
                          fontSize: 16, color: AppColors.primaryWhite),
                    ),
                    People(
                      onGenderSelected: (gender) {
                        setState(() {
                          _gender.text = gender.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 325,
                height: 50,
                child: TextField(
                  controller: _promo_code,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    hintText: "Код друга",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Checkbox(
                        value: term_and_condition ,
                        activeColor: Color.fromARGB(255, 255, 255, 255),
                        onChanged: (value) {
                          setState(() {
                            term_and_condition = value!;
                          });
                        }),
                    Text(
                      "${context.localized.offert}",
                      style: TextStyle(color: AppColors.primaryWhite),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  state is RegisterSuccess
                      ? context.router.push(AuthConf(smsFor: '0', phoneNumber: _phoneNumber.text))
                      : null;
                  state is RegisterFailed
                      ? showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text(""),
                            content: const Text("Не коректно"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  color: Colors.blue,
                                  padding: const EdgeInsets.all(14),
                                  child: const Text("okay"),
                                ),
                              ),
                            ],
                          ),
                        )
                      : null;
                },
                builder: (context, state) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primaryWhite,
                      minimumSize: Size(325, 60),
                    ),
                    onPressed: () => context.read<AuthBloc>().add(RegisterUser(
                        phone: _phoneNumber.text,
                        name: _name.text,
                        surname: _surname.text,
                        patronymic: _patronymic.text,
                        year_of_birth: _year_of_birth.text,
                        gender: _gender.text,
                        promo_code: _promo_code.text,
                        term_and_condition: term_and_condition)),
                    child: Text(
                      "${context.localized.next}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryBlack),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
