import 'package:bordered_text/bordered_text.dart';
import 'package:fit_record_app/feature/exercises_page/exercises_page.dart';
import 'package:flutter/material.dart';
import '../../widgets/componation/colors_app.dart';
import '../../widgets/componation/font_app.dart';

class StrenghtInformationPage extends StatefulWidget {
  const StrenghtInformationPage({Key? key}) : super(key: key);

  @override
  State<StrenghtInformationPage> createState() =>
      _StrenghtInformationPageState();
}

class _StrenghtInformationPageState extends State<StrenghtInformationPage> {
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
                "lib/images/strenght.information.png",
              ),
              fit: BoxFit.fitWidth),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
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
                      child: Text("Força",
                          style: FontApp.mainfont45.copyWith(color: Colors.transparent)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 120),
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
                            Text("força tem a função",
                                textAlign: TextAlign.center,
                                style: FontApp.mainfont22.copyWith(
                                  color: ColorsApp.maincolor4,
                                )),
                            Text("de realizar",
                                textAlign: TextAlign.center,
                                style: FontApp.mainfont22.copyWith(
                                  color: ColorsApp.maincolor4,
                                )),
                            Text("adaptações neurais",
                                textAlign: TextAlign.center,
                                style: FontApp.mainfont22.copyWith(
                                  color: ColorsApp.maincolor4,
                                )),
                            Text("que acarretam no",
                                textAlign: TextAlign.start,
                                style: FontApp.mainfont22.copyWith(
                                  color: ColorsApp.maincolor4,
                                )),
                            RichText(
                              text: TextSpan(text: "trabalho de",
                                  style: FontApp.mainfont22.copyWith(
                                    color: ColorsApp.maincolor4,),
                                  children: <TextSpan>[
                                    TextSpan(text: "potência", style: FontApp.mainfont30.copyWith(color: ColorsApp.maincolor3, fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            Text("das fibras",
                                textAlign: TextAlign.start,
                                style: FontApp.mainfont22.copyWith(
                                  color: ColorsApp.maincolor4,
                                )),
                            Text("musculares.",
                                textAlign: TextAlign.start,
                                style: FontApp.mainfont22.copyWith(
                                  color: ColorsApp.maincolor4,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 120),
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
                                    TextSpan(text: "altas", style: FontApp.mainfont30.copyWith(color: ColorsApp.maincolor3, fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(text: "cargas",
                                  style: FontApp.mainfont30.copyWith(
                                    color: ColorsApp.maincolor3, fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(text: "com", style: FontApp.mainfont22.copyWith(color: ColorsApp.maincolor4)),
                                    TextSpan(text: "baixo", style: FontApp.mainfont30.copyWith(color: ColorsApp.maincolor3, fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            Text("número de",
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
      ),
    );
  }
}
