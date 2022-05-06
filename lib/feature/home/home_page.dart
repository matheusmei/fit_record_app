import 'package:bordered_text/bordered_text.dart';
import 'package:fit_record_app/widgets/buttom_model.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/material.dart';

import '../../widgets/componation/colors_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(left: 185),
                child: const Image(
                  image: AssetImage("lib/images/logo.png"),
                  width: 130,
                  height: 130,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Bem vindo ao",
                    textAlign: TextAlign.start,
                    style: FontApp.mainfont20.copyWith(
                      color: ColorsApp.maincolor3,
                    )),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: BorderedText(
                    strokeWidth: 1.0,
                    strokeColor: ColorsApp.maincolor3,
                    child: Text("Fit Record.",
                        style: FontApp.mainfont32
                            .copyWith(color: Colors.transparent)),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 16),
                child: Text("Vamos mudar seu",
                    textAlign: TextAlign.end,
                    style: FontApp.mainfont20.copyWith(
                      color: ColorsApp.maincolor3,
                    )),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: BorderedText(
                    strokeWidth: 1.0,
                    strokeColor: ColorsApp.maincolor3,
                    child: Text("Estilo de Vida!",
                        style: FontApp.mainfont32
                            .copyWith(color: Colors.transparent)),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.zero,
                        child: BorderedText(
                          strokeWidth: 1.0,
                          strokeColor: ColorsApp.maincolor3,
                          child: Text("ATENÇÃO!",
                              style: FontApp.mainfont32
                                  .copyWith(color: Colors.transparent)),
                        ),
                      ),
                      Text("Recomendamos que",
                          textAlign: TextAlign.center,
                          style: FontApp.mainfont20.copyWith(
                            color: ColorsApp.maincolor3,
                          )),
                      Text("este App seja utilizado",
                          textAlign: TextAlign.center,
                          style: FontApp.mainfont20.copyWith(
                            color: ColorsApp.maincolor3,
                          )),
                      Text("junto a um",
                          textAlign: TextAlign.center,
                          style: FontApp.mainfont20.copyWith(
                            color: ColorsApp.maincolor3,
                          )),
                      Text("profissional de",
                          textAlign: TextAlign.center,
                          style: FontApp.mainfont20.copyWith(
                            color: ColorsApp.maincolor3,
                          )),
                      Text("Educação Física.",
                          textAlign: TextAlign.start,
                          style: FontApp.mainfont20.copyWith(
                            color: ColorsApp.maincolor3,
                          )),
                    ],
                  ),
                  Icon(
                    Icons.warning_amber_rounded,
                    size: 80,
                    color: ColorsApp.maincolor3,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  const Spacer(),
                  Expanded(
                      flex: 3,
                      child:
                          ButtomModel(text: "Let's Do It!", onPressed: () {})),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
