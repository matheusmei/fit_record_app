import 'package:fit_record_app/feature/exercises_page/muscular_group_model.dart';
import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class TrainingSavedCard extends StatelessWidget {
  final String trainingName;
  final String repetitionCount;
  final String serieCount;
  final String restTimeCount;
  final Function() onPressed;
  final List<Widget> cardChidren;

  const TrainingSavedCard({
    Key? key,
    required this.trainingName,
    required this.repetitionCount,
    required this.serieCount,
    required this.restTimeCount,
    required this.onPressed,
    required this.cardChidren,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        child: Container(
          width: 344,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorsApp.maincolor1,
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Container(
              width: 309,
              child: Center(
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Text(
                        trainingName,
                        textAlign: TextAlign.start,
                        style: FontApp.mainfont30.copyWith(
                          color: ColorsApp.maincolor4,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Tempo de Descanso  ",
                            style: FontApp.mainfont16.copyWith(
                              color: ColorsApp.maincolor4,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: restTimeCount,
                                style: FontApp.mainfont16.copyWith(
                                  color: ColorsApp.maincolor4,
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Serie  ",
                          style: FontApp.mainfont16.copyWith(
                            color: ColorsApp.maincolor4,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: serieCount,
                              style: FontApp.mainfont16.copyWith(
                                color: ColorsApp.maincolor4,
                              ),
                            ),
                            TextSpan(
                              text: "Repetições ",
                              style: FontApp.mainfont16.copyWith(
                                color: ColorsApp.maincolor4,
                              ),
                            ),
                            TextSpan(
                              text: repetitionCount,
                              style: FontApp.mainfont16.copyWith(
                                color: ColorsApp.maincolor4,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  children: cardChidren,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
