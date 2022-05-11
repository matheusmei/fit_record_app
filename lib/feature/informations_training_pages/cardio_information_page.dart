import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/componation/colors_app.dart';
import '../../widgets/componation/font_app.dart';
import '../exercises_page/exercises_page.dart';
import '../training_mode_page/training_mode_page.dart';

class CardioInformationPage extends StatefulWidget {
  const CardioInformationPage({Key? key}) : super(key: key);

  @override
  State<CardioInformationPage> createState() => _CardioInformationPageState();
}

class _CardioInformationPageState extends State<CardioInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [ColorsApp.maincolor1, ColorsApp.maincolor2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.bottomCenter,
              opacity: 0.4,
              image: AssetImage(
                "lib/images/cardio.information.png",
              ),
              fit: BoxFit.fitWidth),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TrainingModePage(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: ColorsApp.maincolor3,
                          size: 40,
                        )),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text("Treino de",
                          textAlign: TextAlign.start,
                          style: FontApp.mainfont32.copyWith(
                            color: ColorsApp.maincolor3,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: BorderedText(
                    strokeWidth: 1.0,
                    strokeColor: ColorsApp.maincolor3,
                    child: Text("Cardio",
                        style: FontApp.mainfont45
                            .copyWith(color: Colors.transparent)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("O treinamento",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("cardiorrespiratório auxilia",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("no processo metabólico",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          RichText(
                            text: TextSpan(
                                text: "de",
                                style: FontApp.mainfont22.copyWith(
                                  color: ColorsApp.maincolor4,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "queima de gordura",
                                      style: FontApp.mainfont30.copyWith(
                                          color: ColorsApp.maincolor3,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                          Text("e no desenvolvimento",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          RichText(
                            text: TextSpan(
                                text: "da",
                                style: FontApp.mainfont22.copyWith(
                                  color: ColorsApp.maincolor4,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "capacidade",
                                      style: FontApp.mainfont30.copyWith(
                                          color: ColorsApp.maincolor3,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                          Text("cardíaca",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont30.copyWith(
                                  color: ColorsApp.maincolor3,
                                  fontWeight: FontWeight.bold)),
                          RichText(
                            text: TextSpan(
                                text: "e",
                                style: FontApp.mainfont22.copyWith(
                                  color: ColorsApp.maincolor4,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "pulmonar.",
                                      style: FontApp.mainfont30.copyWith(
                                          color: ColorsApp.maincolor3,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("As medidas de",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("trabalho podem",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("variar entre",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          RichText(
                            text: TextSpan(
                                text: "tempo",
                                style: FontApp.mainfont30.copyWith(
                                    color: ColorsApp.maincolor3,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ",",
                                      style: FontApp.mainfont30
                                          .copyWith(color: ColorsApp.maincolor4)),
                                  TextSpan(
                                      text: "intensidade",
                                      style: FontApp.mainfont30.copyWith(
                                          color: ColorsApp.maincolor3,
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                          Text("calorias",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont30.copyWith(
                                  color: ColorsApp.maincolor3,
                                  fontWeight: FontWeight.bold)),
                          Text("e mensuração da",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("frequência cardíaca.",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont30.copyWith(
                                  color: ColorsApp.maincolor3,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text("Vamos",
                      textAlign: TextAlign.center,
                      style: FontApp.mainfont30.copyWith(
                        color: ColorsApp.maincolor3,
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Começar?!",
                        textAlign: TextAlign.end,
                        style: FontApp.mainfont36.copyWith(
                          color: ColorsApp.maincolor3,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExercisesPage()));
                        },
                        icon: Icon(
                          Icons.play_circle_fill_rounded,
                          color: ColorsApp.maincolor3,
                          size: 50,
                        )),
                    const SizedBox(
                      width: 12,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
