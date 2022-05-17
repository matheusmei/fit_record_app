import 'package:bordered_text/bordered_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:fit_record_app/feature/exercises_page/exercises_confirmation.dart';
import 'package:fit_record_app/feature/save_training/training_save_function.dart';
import 'package:fit_record_app/widgets/buttom_model.dart';
import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/exercices_card.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:fit_record_app/widgets/componation/main_text_field.dart';
import 'package:fit_record_app/widgets/componation/training_saved_card.dart';
import 'package:flutter/material.dart';

class ExercisesPage2 extends StatefulWidget {
  const ExercisesPage2({Key? key}) : super(key: key);

  @override
  State<ExercisesPage2> createState() => _ExercisesPage2State();
}

class _ExercisesPage2State extends State<ExercisesPage2> {
  late List<String> muscleGroups;
  List<Map<String, dynamic>> abdominalExercises = [];
  List<Map<String, dynamic>> bicepsExercises = [];
  List<Map<String, dynamic>> dorsalExercises = [];
  List<Map<String, dynamic>> gluteoExercises = [];
  List<Map<String, dynamic>> ombroExercises = [];
  List<Map<String, dynamic>> peitoralExercises = [];
  List<Map<String, dynamic>> pernasExercises = [];
  List<Map<String, dynamic>> tricepsExercises = [];

  late bool isCardLoading;
  late bool cardHasError;
  late bool isBodyLoading;
  late bool bodyHasError;

  final nameTrainingController = TextEditingController();

  final dropValue = ValueNotifier("");
  final dropValue2 = ValueNotifier("");
  final dropValue3 = ValueNotifier("");

  final repetitions = [
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "22",
    "24",
    "26",
  ];

  final series = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

  final restTime = [
    "20 seg",
    "30 seg",
    "40 seg",
    "50 seg",
    "1 min",
    "1:10 min",
    "1:15 min",
    "1:20 min",
    "1:30 min",
    "1:40 min",
    "1:50 min",
    "2 min",
    "3 min",
    "4 min",
    "5 min",
  ];

  Future<void> _setupExercises() async {
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
    abdominalExercises = await _fetchMuscleExercises("abdominal");
    bicepsExercises = await _fetchMuscleExercises("biceps");
    dorsalExercises = await _fetchMuscleExercises("dorsal");
    gluteoExercises = await _fetchMuscleExercises("gluteo");
    ombroExercises = await _fetchMuscleExercises("ombro");
    peitoralExercises = await _fetchMuscleExercises("peitoral");
    pernasExercises = await _fetchMuscleExercises("pernas");
    tricepsExercises = await _fetchMuscleExercises("triceps");
    setState(() {});
  }

  Future<List<Map<String, dynamic>>> _fetchMuscleExercises(
      String muscularGroup) async {
    final exercisesCollection = await FirebaseFirestore.instance
        .collection("muscular_group")
        .doc(muscularGroup)
        .collection("exercise")
        .get();

    if (exercisesCollection.docs.isEmpty) {
      setState(() {
        bodyHasError = true;
      });
      return [];
    }

    return exercisesCollection.docs.map((e) => e.data()).toList();
  }

  @override
  void initState() {
    isCardLoading = true;
    isBodyLoading = true;
    cardHasError = false;
    bodyHasError = false;

    _setupExercises();
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
              ? ListView(
                  shrinkWrap: true,
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
                    MainTextField(
                      controller: nameTrainingController,
                      labelText: "Nome do Treino",
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                      child: ValueListenableBuilder(
                          valueListenable: dropValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton(
                                iconDisabledColor: ColorsApp.maincolor3,
                                iconEnabledColor: ColorsApp.maincolor3,
                                isExpanded: true,
                                dropdownColor: ColorsApp.maincolor4,
                                hint: Text("Escolha o número de repetições",
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor3,
                                    )),
                                value: (value.isEmpty) ? null : value,
                                onChanged: (escolha) =>
                                    dropValue.value = escolha.toString(),
                                items: repetitions
                                    .map(
                                      (op) => DropdownMenuItem(
                                        value: op,
                                        child: Text(
                                          op,
                                          style: FontApp.mainfont16.copyWith(
                                              color: ColorsApp.maincolor3),
                                        ),
                                      ),
                                    )
                                    .toList());
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                      child: ValueListenableBuilder(
                          valueListenable: dropValue2,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton(
                                iconDisabledColor: ColorsApp.maincolor3,
                                iconEnabledColor: ColorsApp.maincolor3,
                                isExpanded: true,
                                dropdownColor: ColorsApp.maincolor4,
                                hint: Text("Escolha o número de séries",
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor3,
                                    )),
                                value: (value.isEmpty) ? null : value,
                                onChanged: (escolha2) =>
                                    dropValue2.value = escolha2.toString(),
                                items: series
                                    .map(
                                      (op2) => DropdownMenuItem(
                                        value: op2,
                                        child: Text(
                                          op2,
                                          style: FontApp.mainfont16.copyWith(
                                              color: ColorsApp.maincolor3),
                                        ),
                                      ),
                                    )
                                    .toList());
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
                      child: ValueListenableBuilder(
                          valueListenable: dropValue3,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton(
                                iconDisabledColor: ColorsApp.maincolor3,
                                iconEnabledColor: ColorsApp.maincolor3,
                                isExpanded: true,
                                dropdownColor: ColorsApp.maincolor4,
                                hint: Text("Escolha o Tempo de Descanso",
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor3,
                                    )),
                                value: (value.isEmpty) ? null : value,
                                onChanged: (escolha3) =>
                                    dropValue3.value = escolha3.toString(),
                                items: restTime
                                    .map(
                                      (op3) => DropdownMenuItem(
                                        value: op3,
                                        child: Text(
                                          op3,
                                          style: FontApp.mainfont16.copyWith(
                                              color: ColorsApp.maincolor3),
                                        ),
                                      ),
                                    )
                                    .toList());
                          }),
                    ),
                    ExercisesCard(
                      muscularGroup: "Abdomen",
                      muscularGroupPhoto:
                          const AssetImage("lib/images/abdominal.card.jpg"),
                      onPressed: () {},
                      cardChidren: [
                        ListView.builder(
                          itemCount: abdominalExercises.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return CheckboxListTile(
                              title: Text(
                                abdominalExercises[i]["name"],
                                style: FontApp.mainfont16.copyWith(
                                  color: ColorsApp.maincolor4,
                                ),
                              ),
                              value: abdominalExercises[i]["selected"],
                              onChanged: (newValue) {
                                setState(
                                  () {
                                    abdominalExercises[i]["selected"] =
                                        !abdominalExercises[i]["selected"];
                                  },
                                );
                              },
                            );
                          },
                        )
                      ],
                    ),
                    ExercisesCard(
                      muscularGroup: "Bíceps",
                      muscularGroupPhoto:
                          const AssetImage("lib/images/biceps.card.jpg"),
                      onPressed: () {},
                      cardChidren: [
                        ListView.builder(
                          itemCount: bicepsExercises.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return CheckboxListTile(
                                title: Text(bicepsExercises[i]["name"],
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor4,
                                    )),
                                value: bicepsExercises[i]["selected"],
                                onChanged: (newValue) {
                                  setState(() {
                                    bicepsExercises[i]["selected"] =
                                        !bicepsExercises[i]["selected"];
                                  });
                                });
                          },
                        )
                      ],
                    ),
                    ExercisesCard(
                      muscularGroup: "Dorsal",
                      muscularGroupPhoto:
                          const AssetImage("lib/images/dorsal.card.jpg"),
                      onPressed: () {},
                      cardChidren: [
                        ListView.builder(
                          itemCount: dorsalExercises.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return CheckboxListTile(
                                title: Text(dorsalExercises[i]["name"],
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor4,
                                    )),
                                value: dorsalExercises[i]["selected"],
                                onChanged: (newValue) {
                                  setState(() {
                                    dorsalExercises[i]["selected"] =
                                        !dorsalExercises[i]["selected"];
                                  });
                                });
                          },
                        )
                      ],
                    ),
                    ExercisesCard(
                      muscularGroup: "Glúteos",
                      muscularGroupPhoto:
                          const AssetImage("lib/images/gluteo.card.jpg"),
                      onPressed: () {},
                      cardChidren: [
                        ListView.builder(
                          itemCount: gluteoExercises.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return CheckboxListTile(
                                title: Text(gluteoExercises[i]["name"],
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor4,
                                    )),
                                value: gluteoExercises[i]["selected"],
                                onChanged: (newValue) {
                                  setState(() {
                                    gluteoExercises[i]["selected"] =
                                        !gluteoExercises[i]["selected"];
                                  });
                                });
                          },
                        )
                      ],
                    ),
                    ExercisesCard(
                      muscularGroup: "Ombros",
                      muscularGroupPhoto:
                          const AssetImage("lib/images/ombro.card.jpg"),
                      onPressed: () {},
                      cardChidren: [
                        ListView.builder(
                          itemCount: ombroExercises.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return CheckboxListTile(
                                title: Text(ombroExercises[i]["name"],
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor4,
                                    )),
                                value: ombroExercises[i]["selected"],
                                onChanged: (newValue) {
                                  setState(() {
                                    ombroExercises[i]["selected"] =
                                        !ombroExercises[i]["selected"];
                                  });
                                });
                          },
                        )
                      ],
                    ),
                    ExercisesCard(
                      muscularGroup: "Peitoral",
                      muscularGroupPhoto:
                          const AssetImage("lib/images/peitoral.card.jpg"),
                      onPressed: () {},
                      cardChidren: [
                        ListView.builder(
                          itemCount: peitoralExercises.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return CheckboxListTile(
                                title: Text(peitoralExercises[i]["name"],
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor4,
                                    )),
                                value: peitoralExercises[i]["selected"],
                                onChanged: (newValue) {
                                  setState(() {
                                    peitoralExercises[i]["selected"] =
                                        !peitoralExercises[i]["selected"];
                                  });
                                });
                          },
                        )
                      ],
                    ),
                    ExercisesCard(
                      muscularGroup: "Pernas",
                      muscularGroupPhoto:
                          const AssetImage("lib/images/pernas.card.jpg"),
                      onPressed: () {},
                      cardChidren: [
                        ListView.builder(
                          itemCount: pernasExercises.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return CheckboxListTile(
                                title: Text(pernasExercises[i]["name"],
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor4,
                                    )),
                                value: pernasExercises[i]["selected"],
                                onChanged: (newValue) {
                                  setState(() {
                                    pernasExercises[i]["selected"] =
                                        !pernasExercises[i]["selected"];
                                  });
                                });
                          },
                        )
                      ],
                    ),
                    ExercisesCard(
                      muscularGroup: "Tríceps",
                      muscularGroupPhoto:
                          const AssetImage("lib/images/triceps.card.jpg"),
                      onPressed: () {},
                      cardChidren: [
                        ListView.builder(
                          itemCount: tricepsExercises.length,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            return CheckboxListTile(
                                title: Text(tricepsExercises[i]["name"],
                                    style: FontApp.mainfont16.copyWith(
                                      color: ColorsApp.maincolor4,
                                    )),
                                value: tricepsExercises[i]["selected"],
                                onChanged: (newValue) {
                                  setState(() {
                                    tricepsExercises[i]["selected"] =
                                        !tricepsExercises[i]["selected"];
                                  });
                                });
                          },
                        )
                      ],
                    ),
                    ButtomModel(
                        text: "Salvar Treino",
                        onPressed: () {
                          List<Map<String, dynamic>> selectedExercisesList = [];

                          var result1 = abdominalExercises
                              .where((element) => element["selected"] == true)
                              .toList();
                          var result2 = bicepsExercises
                              .where((element) => element["selected"] == true)
                              .toList();
                          var result3 = dorsalExercises
                              .where((element) => element["selected"] == true)
                              .toList();
                          var result4 = gluteoExercises
                              .where((element) => element["selected"] == true)
                              .toList();
                          var result5 = ombroExercises
                              .where((element) => element["selected"] == true)
                              .toList();
                          var result6 = peitoralExercises
                              .where((element) => element["selected"] == true)
                              .toList();
                          var result7 = pernasExercises
                              .where((element) => element["selected"] == true)
                              .toList();
                          var result8 = tricepsExercises
                              .where((element) => element["selected"] == true)
                              .toList();

                          selectedExercisesList.addAll(result1);
                          selectedExercisesList.addAll(result2);
                          selectedExercisesList.addAll(result3);
                          selectedExercisesList.addAll(result4);
                          selectedExercisesList.addAll(result5);
                          selectedExercisesList.addAll(result6);
                          selectedExercisesList.addAll(result7);
                          selectedExercisesList.addAll(result8);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExercisesConfirmation(
                                myList: selectedExercisesList,
                                saveName: nameTrainingController.text,
                                serieChoiced: dropValue2.value,
                                repetitionChoiced: dropValue.value,
                                restTimeChoiced: dropValue3.value,
                              ),
                            ),
                          );
                        })
                       
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
