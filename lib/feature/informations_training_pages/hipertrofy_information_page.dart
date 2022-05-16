import 'package:bordered_text/bordered_text.dart';
import 'package:fit_record_app/feature/exercises_page/exercises_page2.dart';
import 'package:flutter/material.dart';

import '../../widgets/componation/colors_app.dart';
import '../../widgets/componation/font_app.dart';
import '../exercises_page/exercises_page.dart';

class HipertrofyInformationPage extends StatefulWidget {
  const HipertrofyInformationPage({Key? key}) : super(key: key);

  @override
  State<HipertrofyInformationPage> createState() =>
      _HipertrofyInformationPageState();
}

class _HipertrofyInformationPageState extends State<HipertrofyInformationPage> {
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
                "lib/images/hipertrofy.information.png",
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
                    child: Text("Hipertrofia",
                        style: FontApp.mainfont45.copyWith(color: Colors.transparent)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("O treino de",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont24.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("hipertrofia tem a função",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont24.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                            RichText(
                              text: TextSpan(text: "de",
                                  style: FontApp.mainfont22.copyWith(
                                    color: ColorsApp.maincolor4,),
                                  children: <TextSpan>[
                                    TextSpan(text: "recrutar", style: FontApp.mainfont30.copyWith(color: ColorsApp.maincolor3, fontWeight: FontWeight.bold)),
                                    TextSpan(text: "mais", style: FontApp.mainfont22.copyWith(color: ColorsApp.maincolor4))
                                  ]),
                            ),
                          Text("fibras musculares,",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont24.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                            RichText(
                              text: TextSpan(text: "acarretando",
                                  style: FontApp.mainfont22.copyWith(
                                    color: ColorsApp.maincolor4,),
                                  children: <TextSpan>[
                                    TextSpan(text: "maior", style: FontApp.mainfont30.copyWith(color: ColorsApp.maincolor3, fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(text: "definição",
                                  style: FontApp.mainfont30.copyWith(
                                    color: ColorsApp.maincolor3,),
                                  children: <TextSpan>[
                                    TextSpan(text: "da circunferência", style: FontApp.mainfont22.copyWith(color: ColorsApp.maincolor4)),
                                  ]),
                            ),
                          Text("do músculo.",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont24.copyWith(
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
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("As cargas e repetições",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont24.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("podem variar de acordo",
                              textAlign: TextAlign.center,
                              style: FontApp.mainfont24.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                            RichText(
                              text: TextSpan(text: "com o",
                                  style: FontApp.mainfont22.copyWith(
                                    color: ColorsApp.maincolor4,),
                                  children: <TextSpan>[
                                    TextSpan(text: "grupo muscular", style: FontApp.mainfont30.copyWith(color: ColorsApp.maincolor3, fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(text: "trabalhado",
                                  style: FontApp.mainfont30.copyWith(
                                    color: ColorsApp.maincolor3, fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(text: ", assim como", style: FontApp.mainfont22.copyWith(color: ColorsApp.maincolor4)),
                                  ]),
                            ),
                          Text("a resistência e",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont24.copyWith(
                                color: ColorsApp.maincolor4,
                              )),
                          Text("individualidade biológica",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont30.copyWith(
                                color: ColorsApp.maincolor3, fontWeight: FontWeight.bold
                              )),
                          Text("do praticante.",
                              textAlign: TextAlign.start,
                              style: FontApp.mainfont24.copyWith(
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
                                  builder: (context) => ExercisesPage2()));
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
