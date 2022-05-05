import 'package:dio/dio.dart';
import 'package:fit_record_app/feature/register_user/user_model.dart';
import 'package:flutter/cupertino.dart';

Future registerUser(
  String firstname,
  String lastname,
  String email,
  String password,
) async {
  try {
    var registerUrl = "https://academy-auth.herokuapp.com/register;";
    var response = await Dio().post(registerUrl, data: {
      'firts_name': firstname,
      'last_name': lastname,
      'email': email,
      'password': password,
    });
    return UserModel.fromJson(response.data as Map<String, dynamic>);
  } on DioError catch (e) {
    debugPrint("${e.response}");
  }
}