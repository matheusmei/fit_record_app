import 'package:fit_record_app/feature/exercises_page/exercises_page2.dart';
import 'package:fit_record_app/feature/save_training/training_save_function.dart';
import 'package:fit_record_app/widgets/buttom_model.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/material.dart';

import '../../widgets/componation/colors_app.dart';

class ExercisesConfirmation extends StatelessWidget {
  final String saveName;
  final String serieChoiced;
  final String repetitionChoiced;
  final String restTimeChoiced;

  final List<Map<String, dynamic>> myList;

  const ExercisesConfirmation(
      {Key? key,
      required this.myList,
      required this.saveName,
      required this.serieChoiced,
      required this.repetitionChoiced,
      required this.restTimeChoiced})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        body: Container(
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
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(color: ColorsApp.maincolor4),
                child: Text(
                  saveName,
                  style: FontApp.mainfont16.copyWith(
                    color: ColorsApp.maincolor3,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(color: ColorsApp.maincolor4),
                child: Text(
                  serieChoiced,
                  style: FontApp.mainfont16.copyWith(
                    color: ColorsApp.maincolor3,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(color: ColorsApp.maincolor4),
                child: Text(
                  repetitionChoiced,
                  style: FontApp.mainfont16.copyWith(
                    color: ColorsApp.maincolor3,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(color: ColorsApp.maincolor4),
                child: Text(restTimeChoiced,
                    style: FontApp.mainfont16.copyWith(
                      color: ColorsApp.maincolor3,
                    )),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Container(
                      height: 50,
                      width: 30,
                      color: ColorsApp.maincolor4,
                      child: Text(
                        myList[index]["name"],
                        style: FontApp.mainfont16.copyWith(
                          color: ColorsApp.maincolor3,
                        ),
                      ),
                    ),
                  );
                }),
                itemCount: myList.length,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ButtomModel(
                      text: 'Editar',
                      onPressed: () {
                        Navigator.pop(
                          context,
                          const ExercisesPage2(),
                        );
                      }),
                  ButtomModel(
                    text: 'Salvar',
                    onPressed: () {
                      trainingSaveFunction(myList, saveName, serieChoiced,
                          repetitionChoiced, restTimeChoiced);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
