import 'package:flutter/material.dart';

import 'colors_app.dart';
import 'font_app.dart';

class MainTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final Icon choosedIcon;
  final bool isObscure;

  const MainTextField(
      {required this.controller,
      required this.labelText,
      required this.choosedIcon,
      this.isObscure = false,
      Key? key})
      : super(key: key);

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        style: FontApp.mainfont16.copyWith(color: ColorsApp.maincolor4),
        cursorColor: ColorsApp.maincolor5,
        controller: widget.controller,
        obscureText: widget.isObscure,
        decoration: InputDecoration(
            icon: widget.choosedIcon,
            labelText: widget.labelText,
            labelStyle: TextStyle(color: ColorsApp.maincolor3),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorsApp.maincolor5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorsApp.maincolor5,
              ),
            )),
      ),
    );
  }
}
