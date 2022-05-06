import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../register_user/user_model.dart';

Future loginUser(
  String email,
  String password,
) async {
  try {
    var loginUrl = "https://academy-auth.herokuapp.com/login";
    var response2 = await Dio().post(loginUrl, data: {
      'email': email,
      'password': password,
    });
    return UserModel.fromJson(response2.data as Map<String, dynamic>);
  } on DioError catch (e) {
    debugPrint("${e.response}");
  }
}
