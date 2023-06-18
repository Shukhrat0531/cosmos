// import 'package:auto_route/auto_route.dart';
// import 'package:bord/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
// import 'package:cosmos/pages/authentiaction/real_register.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


// import 'package:bord/pages/regestration/register.dart';
// import 'package:pinput/pinput.dart';
class Authorization extends StatefulWidget {
  const Authorization({super.key});

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  TextEditingController controller = TextEditingController();

  final maskFormatter = new MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"7": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  bool isElevenChars = false;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.text.length == 11 && !isElevenChars) {
        setState(() {
          isElevenChars = true;
        });
      } else if (controller.text.length != 11 && isElevenChars) {
        setState(() {
          isElevenChars = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 255, 255, 255)),
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
                child: Text('Зарегистрироваться',
                    style: TextStyle(color: AppColors.primaryWhite, fontSize: 16)),
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
                    "Войти",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400,color: AppColors.primaryWhite),
                  )),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  width: 325,
                  height: 50,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "+7(777)777 77 77",
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryWhite,// Изменяем цвет в соответствии с состоянием
                    minimumSize: Size(325, 60),
                  ),
                  onPressed: 
                      () {
                          context.router.pushNamed('/auth-conf');
                        },
                      // Если символов 11, то кнопка активна
                  child: Text(
                    "Далее",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
