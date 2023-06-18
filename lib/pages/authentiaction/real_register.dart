// import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/pages/authentiaction/confirmaton.dart';
// import 'package:cosmos/pages/authentiaction/reapit_conf.dart';
import 'package:cosmos/widgets/people.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Regestration extends StatefulWidget {
  const Regestration({Key? key}) : super(key: key);

  @override
  State<Regestration> createState() => _RegestrationState();
}

class _RegestrationState extends State<Regestration> {
  bool isCheked = false;
  final maskFormatter = new MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"7": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  TextEditingController _controller = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController friendCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                "Зарегистрироваться",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: AppColors.primaryWhite),
              )),
            ),
            SizedBox(
              height: 35,
            ),
            buildTextField('+7 (777) 77 77', _controller, TextInputType.number),
            SizedBox(
              height: 10,
            ),
            buildTextField('Имя', nameController, TextInputType.text),
            SizedBox(
              height: 10,
            ),
            buildTextField('Фамилия', surnameController, TextInputType.text),
            SizedBox(
              height: 10,
            ),
            buildTextField(
                'Почта', emailController, TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Text(
                    "Пол:   ",
                    style: TextStyle(fontSize: 16, color:AppColors.primaryWhite),
                  ),
                  People()

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildTextField('Код друга (не обезятельно)', friendCodeController,
                TextInputType.text),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Checkbox(
                      value: isCheked,
                      activeColor: Color.fromARGB(255, 255, 255, 255),
                      onChanged: (newBoo) {
                        setState(() {
                          isCheked = newBoo!;
                        });
                      }),
                  Text("Я ознакомлен с Публичной офертой",style: TextStyle(color: AppColors.primaryWhite),)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.primaryWhite,
                minimumSize: Size(325, 60),
              ),
              onPressed: () {
                 Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          AuthConf()), // замените MainScreen на ваш главный экран
                );
                // context.router.pushNamed('/Confirmation');
              },
              child: Text(
                "Далее",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: AppColors.primaryBlack),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText, TextEditingController controller,
      TextInputType keyboardType) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryWhite,
        borderRadius: BorderRadius.circular(10),
        
        
      ),
      width: 325,
      height: 50,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}

