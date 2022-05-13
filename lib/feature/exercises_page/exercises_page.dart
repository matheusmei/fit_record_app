import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fit_record_app/feature/exercises_page/exercise_model.dart';
import 'package:fit_record_app/feature/exercises_page/muscular_group_model.dart';
import 'package:fit_record_app/widgets/componation/exercices_card.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:fit_record_app/widgets/componation/main_text_field.dart';
import 'package:flutter/material.dart';
import '../../widgets/componation/colors_app.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({Key? key}) : super(key: key);
  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  Future<List<String>> getMuscularList() async {
    final muscularCollection =
        await FirebaseFirestore.instance.collection("muscular_group").get();

    final muscularGroups = muscularCollection.docs;

    final parsedList = muscularGroups.map((document) => document.id).toList();

    return parsedList;
  }

  final currentMuscle = FirebaseFirestore.instance.collection("muscular_group");
  Future<List<Map<String, dynamic>>> getExerciseList(
      String currentMuscle) async {
    final exerciseCollection = await FirebaseFirestore.instance
        .collection("muscular_group")
        .doc(currentMuscle)
        .collection("exercise")
        .get();
    final exerciseGroup = exerciseCollection.docs;
    final exerciseList = exerciseGroup.map((e) => e.data()).toList();
    return exerciseList;
  }

  @override
  void initState() {
    getMuscularList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        ColorsApp.maincolor1,
        ColorsApp.maincolor1,
        ColorsApp.maincolor2
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
                FutureBuilder<List<String>>(
                  future: getMuscularList(),
                  builder: (context, muscle) {
                    if (muscle.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (muscle.hasError) {
                      return const Center(
                        child: Text("DEU RUIM"),
                      );
                    }

                    return ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: muscle.data!.length, //! fix this
                        itemBuilder: (context, index) {
                          if (muscle.hasData && !muscle.hasError) {
                            return ExercisesCard(
                              muscularGroup: muscle.data![index],
                              muscularGroupPhoto: AssetImage(
                                  "lib/images/${muscle.data![index]}.card.jpg"),
                              onPressed: () async {
                                await getMuscularList();
                              },
                              cardChidren: [
                                FutureBuilder<List<Map<String, dynamic>>>(
                                  future: getExerciseList(muscle.data![index]),
                                  builder: (context, exercise) {
                                    if (exercise.connectionState ==
                                        ConnectionState.waiting) {
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }

                                    if (exercise.hasError) {
                                      return const Center(
                                        child: Text("DEU RUIM"),
                                      );
                                    }
                                    return ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: exercise.data!.length,
                                      itemBuilder: (context, index) {
                                        if (exercise.hasData &&
                                            !exercise.hasError) {
                                          return Text(
                                              exercise.data![index]["name"]);
                                        } else {
                                          return const Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        }
                                      },
                                    );
                                  },
                                ),
                              ],
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
