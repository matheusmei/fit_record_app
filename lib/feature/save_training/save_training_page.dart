import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:fit_record_app/widgets/componation/main_text_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/componation/colors_app.dart';

class SaveTrainingPage extends StatefulWidget {
  const SaveTrainingPage({Key? key}) : super(key: key);

  @override
  State<SaveTrainingPage> createState() => _SaveTrainingPageState();
}

class _SaveTrainingPageState extends State<SaveTrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsApp.maincolor1,
            ColorsApp.maincolor1,
            ColorsApp.maincolor2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 90,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Crie",
                          style: FontApp.mainfont36
                              .copyWith(color: ColorsApp.maincolor3),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 150,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "o seu",
                          style: FontApp.mainfont30
                              .copyWith(color: ColorsApp.maincolor2),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 200,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Treino",
                          style: FontApp.mainfont42
                              .copyWith(color: ColorsApp.maincolor3),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: ColorsApp.maincolor3,
                    child: Icon(
                      Icons.add,
                      size: 50,
                      color: ColorsApp.maincolor4,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Seus Treinos Salvos",
                      style: FontApp.mainfont18.copyWith(
                        color: ColorsApp.maincolor4,
                      ),
                    ),
                  )
                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}
