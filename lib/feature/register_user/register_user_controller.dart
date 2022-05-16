import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:fit_record_app/feature/register_user/user_model.dart';
import 'package:fit_record_app/widgets/componation/custom_dialog.dart';
import 'package:flutter/cupertino.dart';

Future registerUser(
  String firstname,
  String lastname,
  String email,
  String password,
  BuildContext context
) async {
  UserModel userModel;
  try {
    var registerUrl = "https://academy-auth.herokuapp.com/register";
    var response = await Dio().post(
      registerUrl,
      data: {
        'first_name': firstname,
        'last_name': lastname,
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 201) {
      final userResponse = UserModel.fromJson(response.data);
      userModel = userResponse;
      FirebaseFirestore.instance
      .collection("users")
      .doc(userModel.sId)
      .set(
        {
          'id': userModel.sId,
          'first_name': userModel.firstName,
          'token': userModel.token,
          'email': userModel.email
        },
      );
      return userResponse;
      
    }

    return [UserModel.fromJson(response.data as Map<String, dynamic>),
    CustomDialog(context, "Sucesso!", "Usuário Criado", "OK", () => Navigator.pop(context),)];
  } on DioError catch (e) {
    debugPrint("${e.response}");
  }
}
