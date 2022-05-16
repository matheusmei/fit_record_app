import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/material.dart';

class ButtomModel2 extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ButtomModel2({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
          color: ColorsApp.maincolor3, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: 120,
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: FontApp.mainfont20.copyWith(color: ColorsApp.maincolor4),
          ),
        ),
      ),
    );
  }
}
