import 'package:bordered_text/bordered_text.dart';
import 'package:fit_record_app/feature/home/home_page.dart';
import 'package:fit_record_app/feature/login_pages/user_login_model.dart';
import 'package:fit_record_app/feature/register_user/register_user_page.dart';
import 'package:fit_record_app/widgets/buttom_model.dart';
import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/custom_dialog.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:fit_record_app/widgets/componation/main_text_field.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../register_user/register_user_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late Box<String> saveTrainingBox;

  @override
  void initState() {
    setState(
      () {
        saveTrainingBox = Hive.box("userTrainingBox");
        super.initState();
      },
    );
  }

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: BorderedText(
                  strokeWidth: 4.0,
                  strokeColor: ColorsApp.maincolor2,
                  child: Text("Fit Record", style: FontApp.logotitle),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MainTextField(
                controller: emailController,
                labelText: "E-mail",
                choosedIcon: Icon(
                  Icons.email,
                  color: ColorsApp.maincolor3,
                ),
              ),
              MainTextField(
                controller: passwordController,
                labelText: "Senha",
                choosedIcon: Icon(
                  Icons.key,
                  color: ColorsApp.maincolor3,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ButtomModel(
                  text: "Login",
                  onPressed: () async {
                    if (emailController.text.isNotEmpty == true &&
                        passwordController.text.isNotEmpty == true) {
                      return await loginUser(emailController.text.trim(),
                              passwordController.text,
                              context,
                              saveTrainingBox)
                          .then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        ),
                      );
                    }
                    if (emailController.text.isNotEmpty != true ||
                        passwordController.text.isNotEmpty != true) {
                      return CustomDialog(
                        context,
                        "Erro",
                        "Complete todos os campos",
                        "OK",
                        () => Navigator.pop(
                          context,
                        ),
                      );
                    }
                  }),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Text("Ainda não tem uma conta?",
                        style: FontApp.mainfont16
                            .copyWith(color: ColorsApp.maincolor4)),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterUserPage()));
                      },
                      child: Text("Registre-se",
                          style: FontApp.mainfont16.copyWith(
                            color: ColorsApp.maincolor3,
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
