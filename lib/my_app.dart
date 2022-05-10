import 'package:fit_record_app/feature/home/home_page.dart';
import 'package:fit_record_app/feature/save%20training/muscular_group_collection.dart';
import 'package:flutter/material.dart';
import 'feature/login_pages/login_page.dart';

import 'feature/login_pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fit Record',
      home: MusculaGroupCollection(),

    );
  }
}