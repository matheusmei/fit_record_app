import 'package:bordered_text/bordered_text.dart';
import 'package:fit_record_app/widgets/buttom_model.dart';
import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/material.dart';

import '../register_user/register_user_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        ColorsApp.maincolor1,
        ColorsApp.maincolor1,
        ColorsApp.maincolor2
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Container(
                height: 220,
                width: 330,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("lib/images/logo.png"),
                  fit: BoxFit.contain,
                ))),
            Padding(
              padding: EdgeInsets.zero,
              child: BorderedText(
                strokeWidth: 4.0,
                strokeColor: ColorsApp.maincolor2,
                child: Text("Fit Record", style: FontApp.logotitle),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: TextField(
                  controller: emailController,
                  cursorColor: ColorsApp.maincolor5,
                  decoration: InputDecoration(
                      hintText: "E-mail",
                      hintStyle: TextStyle(
                          color: ColorsApp.maincolor5,
                          fontWeight: FontWeight.bold),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorsApp.maincolor5))),
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: TextField(
                    controller: emailController,
                    cursorColor: ColorsApp.maincolor5,
                    decoration: InputDecoration(
                        hintText: "Senha",
                        hintStyle: TextStyle(
                            color: ColorsApp.maincolor5,
                            fontWeight: FontWeight.bold),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorsApp.maincolor5))))),
            SizedBox(
              height: 50,
            ),
            ButtomModel(
                text: "Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterUserPage(),
                    ),
                  );
                },
                )
          ],
        ),
      ),
    );
  }
}
