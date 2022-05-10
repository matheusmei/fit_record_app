import 'package:fit_record_app/feature/exercises_page/exercises_page.dart';
import 'package:fit_record_app/widgets/componation/exercices_card.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:fit_record_app/widgets/training_mode_card_model.dart';
import 'package:flutter/material.dart';

import '../../widgets/componation/colors_app.dart';

class TrainingModePage extends StatefulWidget {
  const TrainingModePage({Key? key}) : super(key: key);

  @override
  State<TrainingModePage> createState() => _TrainingModePageState();
}

class _TrainingModePageState extends State<TrainingModePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        ColorsApp.maincolor1,
        ColorsApp.maincolor1,
        ColorsApp.maincolor2
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(children: [
                        Text("Escolha",
                            style: FontApp.mainfont32.copyWith(
                              color: ColorsApp.maincolor3,
                            )),
                      ]),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 120),
                      child: Row(
                        children: [
                          Text(
                            "o seu",
                            style: FontApp.mainfont20
                                .copyWith(color: ColorsApp.maincolor3),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 180),
                      child: Row(
                        children: [
                          Text("Objetivo.",
                              style: FontApp.mainfont32.copyWith(
                                color: ColorsApp.maincolor3,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TrainingModeCard(
                  trainingName: "Força",
                  trainingImage: AssetImage("lib/images/foto.força.png"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExercisesPage()));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TrainingModeCard(
                    trainingName: "Resistência",
                    trainingImage:
                        AssetImage("lib/images/card.resistencia.png"),
                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExercisesPage()));
                    }),
                const SizedBox(
                  height: 20,
                ),
                TrainingModeCard(
                    trainingName: "Hipertrofia",
                    trainingImage:
                        AssetImage("lib/images/card.hipertrofia.png"),
                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExercisesPage()));
                    }),
                const SizedBox(
                  height: 20,
                ),
                TrainingModeCard(
                    trainingName: "Cardio",
                    trainingImage: AssetImage("lib/images/card.cardio.png"),
                    onPressed: () {
                                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExercisesPage()));
                    }),
                const SizedBox(
                  height: 10,
                ),
                IconButton(
                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExercisesPage()));
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: ColorsApp.maincolor3,
                      size: 50,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
