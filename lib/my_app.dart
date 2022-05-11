import 'package:fit_record_app/feature/exercises_page/exercise_model.dart';
import 'package:fit_record_app/feature/exercises_page/exercises_page.dart';

import 'package:fit_record_app/feature/home/home_page.dart';
import 'package:fit_record_app/feature/informations_training_pages/cardio_information_page.dart';
import 'package:fit_record_app/feature/informations_training_pages/hipertrofy_information_page.dart';
import 'package:fit_record_app/feature/informations_training_pages/resistence_information_page.dart';
import 'package:fit_record_app/feature/informations_training_pages/strenght_information_page.dart';
import 'package:fit_record_app/feature/login_pages/user_login_model.dart';
import 'package:fit_record_app/feature/save%20training/muscular_group_collection.dart';
import 'package:fit_record_app/feature/training_mode_page/training_mode_page.dart';
import 'package:flutter/material.dart';
import 'feature/login_pages/login_page.dart';
import 'feature/login_pages/login_page.dart';

import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fit Record',
      home: CardioInformationPage(),
    );
  }
}
