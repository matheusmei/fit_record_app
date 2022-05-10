import 'package:fit_record_app/feature/exercises_page/exercises_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fit Record',
      home: ExercisesPage(),
    );
  }
}
