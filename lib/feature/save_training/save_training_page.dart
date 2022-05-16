import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fit_record_app/feature/exercises_page/exercises_confirmation.dart';
import 'package:fit_record_app/feature/exercises_page/exercises_page2.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:fit_record_app/widgets/componation/main_text_field.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../widgets/componation/colors_app.dart';

class SaveTrainingPage extends StatefulWidget {
  const SaveTrainingPage({Key? key}) : super(key: key);

  @override
  State<SaveTrainingPage> createState() => _SaveTrainingPageState();
}

class _SaveTrainingPageState extends State<SaveTrainingPage> {
// late Box<String> userTraining;
// late String? userId;
// late List<Map<ExercisesConfirmation, dynamic>> exerciseConfirmation;


// @override
// void initState(){
// userTraining = Hive.box("userTrainingBox");
// userId = userTraining.get("id");
// getUserTraining();
// super.initState();
// }

// Stream<List<Map<ExercisesConfirmation, dynamic>>> getUserTraining() async*{
// exerciseConfirmation =[];
// if (userId != null){
// final docs = await FirebaseFirestore.instance
// .collection('users')
// .doc(userId)
// .collection('saved_training')
// .doc()
// .get();
//     exerciseConfirmation = docs.map(e) => ExercisesConfirmation.fromJson(e.data()).toList();


// }


// }




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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExercisesPage2(),
                        ),
                      );
                    },
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
