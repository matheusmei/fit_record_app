import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:fit_record_app/feature/home/home_page.dart';
import 'package:fit_record_app/widgets/componation/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../register_user/user_model.dart';

import '../register_user/user_model.dart';

Future loginUser(
  String email,
  String password,
  BuildContext context,
  Box<String> hiveBox,
) async {
  try {
    var loginUrl = "https://academy-auth.herokuapp.com/login";
    var response2 = await Dio().post(
      loginUrl,
      data: {
        'email': email,
        'password': password,
      },
    );

    UserModel user = UserModel.fromJson(response2.data as Map<String, dynamic>);
    hiveBox.putAll({"id": user.sId!, "email": user.email!});
    CustomDialog(
      context,
      "Login Efetuado",
      "Bem vindo a um novo Estilo de vida",
      "OK",
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  } on DioError catch (e) {
    CustomDialog(
      context,
      "Erro",
      "${e.response}",
      "OK",
      () => Navigator.pop(context),
    );
  }
}
