import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/painting.dart';

class ExercisesCard2 extends StatelessWidget {
  final String muscularGroup;
  final AssetImage muscularPhotoGroup;

  const ExercisesCard2(
      {Key? key, required this.muscularGroup, required this.muscularPhotoGroup})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ExpansionTileCard(
        title: Text(""),
        leading: Text(
          muscularGroup,
          style: FontApp.mainfont30.copyWith(
            color: ColorsApp.maincolor4,
          ),
          textAlign: TextAlign.center,
        ),
        expandedColor: ColorsApp.maincolor1,
        children: const [
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text("Teste"),
            ),
          ),
        ],
      ),
    );
  }
}
