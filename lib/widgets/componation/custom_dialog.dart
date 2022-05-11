import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CustomDialog(
  BuildContext customcontext,
  String titleText,
  String contentText,
  String buttonText,
  Function()? onpressed,
) {
  return showDialog(
    context: customcontext,
    builder: (constext) => AlertDialog(
      title: Text(
        titleText,
        style: FontApp.mainfont16.copyWith(
          color: ColorsApp.maincolor3,
        ),
      ),
      content: Text(
        contentText,
        style: FontApp.mainfont16.copyWith(
          color: ColorsApp.maincolor3,
        ),
      ),
      actions: <Widget>[
        OutlinedButton(
          onPressed: onpressed,
          child: Text(
            buttonText,
            style: FontApp.mainfont16.copyWith(
              color: ColorsApp.maincolor3,
            ),
          ),
        )
      ],
    ),
  );
}
