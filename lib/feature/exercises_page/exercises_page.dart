import 'package:fit_record_app/widgets/componation/exercices_card.dart';
import 'package:fit_record_app/widgets/exercises_card_2.dart';
import 'package:flutter/material.dart';

import '../../widgets/componation/colors_app.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({ Key? key }) : super(key: key);

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        ColorsApp.maincolor1,
        ColorsApp.maincolor1,
        ColorsApp.maincolor2
      ],begin: Alignment.topLeft, end: Alignment.bottomRight)),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child:
            Center(
              child: Column(children: [
                ExercisesCard(muscularGroup: "Peitoral", muscularGroupPhoto: AssetImage("lib/images/peitoral.card.jpg"), onPressed: (){}),
                const SizedBox(height: 10,),
                ExercisesCard(muscularGroup: "Costas", muscularGroupPhoto: AssetImage("lib/images/peitoral.card.jpg"), onPressed: (){}),
                const SizedBox(height: 10,),
                ExercisesCard(muscularGroup: "Bíceps", muscularGroupPhoto: AssetImage("lib/images/biceps.card.jpg"), onPressed: (){}),
                              const SizedBox(height: 10,),
                ExercisesCard(muscularGroup: "Tríceps", muscularGroupPhoto: AssetImage("lib/images/triceps.card.jpg"), onPressed: (){}),
                              const SizedBox(height: 10,),
                ExercisesCard(muscularGroup: "Ombro", muscularGroupPhoto: AssetImage("lib/images/ombros.card.jpg"), onPressed: (){}),
                              const SizedBox(height: 10,),
                ExercisesCard(muscularGroup: "Pernas/Coxa", muscularGroupPhoto: AssetImage("lib/images/coxas.card.jpg"), onPressed: (){}),
                              const SizedBox(height: 10,),
                ExercisesCard(muscularGroup: "Glúteos", muscularGroupPhoto: AssetImage("lib/images/gluteos.card.jpg"), onPressed: (){}),
                              const SizedBox(height: 10,),
                ExercisesCard(muscularGroup: "Abdomen", muscularGroupPhoto: AssetImage("lib/images/abdominal.card.jpg"), onPressed: (){}),
                              const SizedBox(height: 10,),



              ]),
            ),
        ),
      ),
      
    );
  }
}