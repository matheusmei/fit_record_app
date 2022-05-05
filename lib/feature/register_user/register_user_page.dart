import 'package:fit_record_app/feature/register_user/user_model.dart';
import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:fit_record_app/widgets/componation/main_text_field.dart';
import 'package:flutter/material.dart';

class RegisterUserPage extends StatelessWidget {
  RegisterUserPage({Key? key}) : super(key: key);
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
