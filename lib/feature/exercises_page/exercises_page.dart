import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fit_record_app/widgets/componation/exercices_card.dart';
import 'package:fit_record_app/widgets/exercises_card_2.dart';
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
            child: FutureBuilder<List<String>>(
              future: getMuscularList(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasError) {
                  return const Center(
                    child: Text("DEU RUIM"),
                  );
                }

                return ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length, //! fix this
                    itemBuilder: (context, index) {
                      if (snapshot.hasData && !snapshot.hasError) {
                        return ExercisesCard(
                          muscularGroup: snapshot.data![index],
                          muscularGroupPhoto: AssetImage(
                              "lib/images/${snapshot.data![index]}.card.jpg"),
                          onPressed: () async {
                            print(snapshot.data![index]);
                            await getMuscularList();
                          },
                          cardChidren: [
                            Text("sodifuhdasofidsuhfdsoifudgs"),
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
          ),
        ),
      ),
    );
  }
}
