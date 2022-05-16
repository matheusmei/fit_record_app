import 'package:bordered_text/bordered_text.dart';
import 'package:fit_record_app/feature/exercises_page/exercises_page2.dart';
import 'package:fit_record_app/feature/save_training/training_save_function.dart';
import 'package:fit_record_app/widgets/buttom_model.dart';
import 'package:fit_record_app/widgets/buttom_model2.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../widgets/componation/colors_app.dart';

class ExercisesConfirmation extends StatelessWidget {
  final String saveName;
  final String serieChoiced;
  final String repetitionChoiced;
  final String restTimeChoiced;
  

  final List<Map<String, dynamic>> myList;


  

 ExercisesConfirmation({
    Key? key,
    required this.myList,
    required this.saveName,
    required this.serieChoiced,
    required this.repetitionChoiced,
    required this.restTimeChoiced,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorsApp.maincolor1,
              ColorsApp.maincolor1,
              ColorsApp.maincolor2
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.zero,
                          child: BorderedText(
                            strokeWidth: 4.0,
                            strokeColor: ColorsApp.maincolor2,
                            child:
                                Text("Fit Record", style: FontApp.logotitle2),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("lib/images/logo.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                Text("Nome do Treino",
                    style: FontApp.mainfont18.copyWith(
                      color: ColorsApp.maincolor3,
                    )),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: ColorsApp.maincolor4,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(saveName,
                      textAlign: TextAlign.center,
                      style: FontApp.mainfont16.copyWith(
                        color: ColorsApp.maincolor3,
                      )),
                ),
                Text("Número de séries",
                    style: FontApp.mainfont18.copyWith(
                      color: ColorsApp.maincolor3,
                    )),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: ColorsApp.maincolor4,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(serieChoiced,
                      textAlign: TextAlign.center,
                      style: FontApp.mainfont16.copyWith(
                        color: ColorsApp.maincolor3,
                      )),
                ),
                Text("Número de Repetições",
                    style: FontApp.mainfont18.copyWith(
                      color: ColorsApp.maincolor3,
                    )),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: ColorsApp.maincolor4,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(repetitionChoiced,
                      textAlign: TextAlign.center,
                      style: FontApp.mainfont16.copyWith(
                        color: ColorsApp.maincolor3,
                      )),
                ),
                Text(
                  "Tempo de Descanso",
                  style:
                      FontApp.mainfont18.copyWith(color: ColorsApp.maincolor3),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: ColorsApp.maincolor4,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    restTimeChoiced,
                    textAlign: TextAlign.center,
                    style: FontApp.mainfont16.copyWith(
                      color: ColorsApp.maincolor3,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListView.builder(
                  itemCount: myList.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Container(
                        decoration: BoxDecoration(
                            color: ColorsApp.maincolor4,
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        height: 40,
                        width: 20,
                        child: Text(myList[index]["name"],
                            style: FontApp.mainfont16.copyWith(
                              color: ColorsApp.maincolor3,
                            )),
                      ),
                    );
                  }),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtomModel2(text: "Editar", onPressed: () {}),
                    const SizedBox(
                      width: 100,
                    ),
                    ButtomModel2(
                        text: "Salvar",
                        onPressed: () {
                          trainingSaveFunction(myList, saveName, serieChoiced,
                              repetitionChoiced, restTimeChoiced);
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
