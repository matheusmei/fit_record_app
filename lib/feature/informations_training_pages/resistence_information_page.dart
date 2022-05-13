import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/componation/colors_app.dart';
import '../../widgets/componation/font_app.dart';
import '../exercises_page/exercises_page.dart';

class ResistenceInformationPage extends StatefulWidget {
  const ResistenceInformationPage({Key? key}) : super(key: key);

  @override
  State<ResistenceInformationPage> createState() =>
      _ResistenceInformationPageState();
}

class _ResistenceInformationPageState extends State<ResistenceInformationPage> {
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
                "lib/images/resistence.information.png",
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
                          Navigator.pop(context);
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
                    child: Text("Resistência",
                        style: FontApp.mainfont45.copyWith(color: Colors.transparent)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("O treinamento de",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("resistência desenvolve a",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("capacidade do corpo de",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                            RichText(
                              text: TextSpan(text: "sustentar",
                                  style: FontApp.mainfont30.copyWith(
                                    color: ColorsApp.maincolor3, fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(text: "cargas de", style: FontApp.mainfont22.copyWith(color: ColorsApp.maincolor4, fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(text: "exercícios em",
                                  style: FontApp.mainfont22.copyWith(
                                    color: ColorsApp.maincolor4,),
                                  children: <TextSpan>[
                                    TextSpan(text: "grandes", style: FontApp.mainfont30.copyWith(color: ColorsApp.maincolor3, fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(text: "períodos de tempo",
                                  style: FontApp.mainfont30.copyWith(
                                    color: ColorsApp.maincolor3, fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(text: ".", style: FontApp.mainfont22.copyWith(color: ColorsApp.maincolor4, fontWeight: FontWeight.bold))
                                  ]),
                            ),
        
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                          Text("O método de trabalho",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("consiste na",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                            RichText(
                              text: TextSpan(text: "aplicação de",
                                  style: FontApp.mainfont22.copyWith(
                                    color: ColorsApp.maincolor4,),
                                  children: <TextSpan>[
                                    TextSpan(text: "cargas mais", style: FontApp.mainfont30.copyWith(color: ColorsApp.maincolor3, fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(text: "baixas",
                                  style: FontApp.mainfont30.copyWith(
                                    color: ColorsApp.maincolor3, fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                  TextSpan(text: ", com", style: FontApp.mainfont22.copyWith(color: ColorsApp.maincolor4)),
                                  TextSpan(text: "altos", style: FontApp.mainfont30.copyWith(color: ColorsApp.maincolor3, fontWeight: FontWeight.bold))
        
                                  ]),
                            ),
                          Text("números de",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont30.copyWith(
                                color: ColorsApp.maincolor3, fontWeight: FontWeight.bold
                              )),
                            RichText(
                              text: TextSpan(text: "repetições",
                                  style: FontApp.mainfont30.copyWith(
                                    color: ColorsApp.maincolor3, fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(text: "entre as", style: FontApp.mainfont22.copyWith(color: ColorsApp.maincolor4))
                                  ]),
                            ),
                          Text("séries.",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont22.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
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
                        icon: Icon(Icons.play_circle_fill_rounded, color: ColorsApp.maincolor3, size: 50,)),
                        const SizedBox(width: 12,)
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
