import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/exercices_card.dart';
import 'package:flutter/material.dart';

class ExercisesPage2 extends StatefulWidget {
  const ExercisesPage2({Key? key}) : super(key: key);

  @override
  State<ExercisesPage2> createState() => _ExercisesPage2State();
}

class _ExercisesPage2State extends State<ExercisesPage2> {
  late List<String> muscleGroups;
  List<Map<String, dynamic>> exercises = [];
  late bool isCardLoading;
  late bool cardHasError;
  late bool isBodyLoading;
  late bool bodyHasError;

  Future<void> _fetchMuscleGroups() async {
    final muscleCollection =
        await FirebaseFirestore.instance.collection("muscular_group").get();
    if (muscleCollection.docs.isEmpty) {
      setState(() {
        cardHasError = true;
      });
      return;
    }
    setState(() {
      muscleGroups = muscleCollection.docs.map((e) => e.id).toList();
      isCardLoading = false;
    });
  }

  Future<void> _fetchMuscleExercises(String muscularGroup) async {
    final exercisesCollection = await FirebaseFirestore.instance
        .collection("muscular_group")
        .doc(muscularGroup)
        .collection("exercise")
        .get();

    if (exercisesCollection.docs.isEmpty) {
      setState(() {
        bodyHasError = true;
      });
      return;
    }

    exercises = exercisesCollection.docs.map((e) => e.data()).toList();
    print(exercises);
  }

  @override
  void initState() {
    isCardLoading = true;
    isBodyLoading = true;
    cardHasError = false;
    bodyHasError = false;

    _fetchMuscleGroups();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            ColorsApp.maincolor1,
            ColorsApp.maincolor1,
            ColorsApp.maincolor2
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: !isCardLoading
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: muscleGroups.length,
                    itemBuilder: (context, index) {
                      return ExercisesCard(
                        muscularGroup: muscleGroups[index],
                        muscularGroupPhoto: AssetImage(
                            "lib/images/${muscleGroups[index]}.card.jpg"),
                        onPressed: () {},
                        cardChidren: [
                          ListView.builder(
                            itemCount: exercises.length,
                            shrinkWrap: true,
                            itemBuilder: (context, i) {
                              return CheckboxListTile(
                                  title: Text(exercises[index]["name"]),
                                  value: exercises[i]["selected"],
                                  onChanged: (newValue) {
                                    setState(() {
                                      exercises[i]["selected"] =
                                          !exercises[i]["selected"];
                                    });
                                  });
                            },
                          )
                        ],
                        onExpansionChanged: (newValue) async {
                          if (newValue) {
                            await _fetchMuscleExercises(muscleGroups[index]);
                          }
                        },
                      );
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  )),
      ),
    );
  }
}
