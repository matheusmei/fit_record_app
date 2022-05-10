import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ExercisesCard extends StatelessWidget {
  final String muscularGroup;
  final AssetImage muscularGroupPhoto;
  final Function() onPressed;

  const ExercisesCard(
      {Key? key,
      required this.muscularGroup,
      required this.muscularGroupPhoto,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed;
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        child: Container(
            width: 344,
            height: 97,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorsApp.maincolor1,
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                width: 309,
                height: 94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: muscularGroupPhoto,
                      fit: BoxFit.fill,
                      opacity: 0.5),
                ),
                
                child: Center(
                  child: Text(muscularGroup,
                      textAlign: TextAlign.center,
                      style: FontApp.mainfont30.copyWith(
                        color: ColorsApp.maincolor4,
                      )),
                      
                ),
              ),
            )),
      ),
    );
  }
}