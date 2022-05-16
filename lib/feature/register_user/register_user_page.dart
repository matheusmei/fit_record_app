import 'package:bordered_text/bordered_text.dart';
import 'package:fit_record_app/feature/home/home_page.dart';
import 'package:fit_record_app/feature/login_pages/login_page.dart';
import 'package:fit_record_app/feature/register_user/register_user_controller.dart';
import 'package:fit_record_app/feature/register_user/user_model.dart';
import 'package:fit_record_app/widgets/buttom_model.dart';
import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/custom_dialog.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:fit_record_app/widgets/componation/main_text_field.dart';
import 'package:flutter/material.dart';

class RegisterUserPage extends StatelessWidget {
  RegisterUserPage({Key? key}) : super(key: key);
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsApp.maincolor1,
            ColorsApp.maincolor1,
            ColorsApp.maincolor2
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                MainTextField(
                  controller: firstnameController,
                  labelText: 'First Name',
                  choosedIcon: Icon(
                    Icons.person,
                    color: ColorsApp.maincolor5,
                  ),
                  isObscure: false,
                ),
                MainTextField(
                  controller: lastnameController,
                  labelText: 'Last Name',
                  choosedIcon: Icon(
                    Icons.person,
                    color: ColorsApp.maincolor5,
                  ),
                  isObscure: false,
                ),
                MainTextField(
                  controller: emailController,
                  labelText: 'email',
                  choosedIcon: Icon(
                    Icons.email,
                    color: ColorsApp.maincolor5,
                  ),
                  isObscure: false,
                ),
                MainTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  choosedIcon: Icon(
                    Icons.key,
                    color: ColorsApp.maincolor5,
                  ),
                  isObscure: true,
                ),
                MainTextField(
                  controller: passwordConfirmationController,
                  labelText: 'Password Confirmation',
                  choosedIcon: Icon(
                    Icons.key,
                    color: ColorsApp.maincolor5,
                  ),
                  isObscure: true,
                ),
                const SizedBox(
                  height: 60,
                ),
                ButtomModel(
                  text: 'Cadastrar',
                  onPressed: () async {
                    final isAllValid =
                        emailController.text.isNotEmpty == true &&
                            firstnameController.text.isNotEmpty == true &&
                            lastnameController.text.isNotEmpty == true &&
                            passwordController.text.isNotEmpty == true &&
                            passwordConfirmationController.text.isNotEmpty ==
                                true &&
                            passwordConfirmationController.text ==
                                passwordController.text;

                    if (isAllValid) {
                      return await registerUser(
                        firstnameController.text,
                        lastnameController.text,
                        emailController.text.trim(),
                        passwordController.text,
                        context,
                      ).then(
                        (value) => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        ),
                      );
                    }

                    if (emailController.text.isNotEmpty != true ||
                        firstnameController.text.isNotEmpty != true ||
                        lastnameController.text.isNotEmpty != true ||
                        passwordController.text.isNotEmpty != true) {
                      return CustomDialog(
                        context,
                        "Erro",
                        "Todos campos precisam ser preenchidos",
                        "OK",
                        () => Navigator.pop(context),
                      );
                    }
                    if (passwordController.text !=
                        passwordConfirmationController.text) {
                      return CustomDialog(
                        context,
                        "Erro",
                        "As senhas não conferem",
                        "OK",
                        () => Navigator.pop(context),
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
