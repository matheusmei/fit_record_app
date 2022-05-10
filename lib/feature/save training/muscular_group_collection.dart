import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:flutter/material.dart';

class MusculaGroupCollection extends StatefulWidget {
  const MusculaGroupCollection({Key? key}) : super(key: key);

  @override
  State<MusculaGroupCollection> createState() => _MusculaGroupCollectionState();
}

class _MusculaGroupCollectionState extends State<MusculaGroupCollection> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<Map<String,dynamic>>>(
      // future: getMuscularList(),
      builder: ((context, snapshot) {
        if (!snapshot.hasData && !snapshot.hasError) {
          return Center(
            child: CircularProgressIndicator(color: ColorsApp.maincolor3),
          );
        }

        if (snapshot.hasError) {
          return Container(
            alignment: Alignment.center,
            color: ColorsApp.maincolor3,
            child: const Text("Erouu"),
          );
        } else {
          final muscular = snapshot.data!;
          return ListView.builder(
            itemCount: muscular.length,
            itemBuilder: ((context, index) {
              return Text("${snapshot.data![index]}");
            }),
          );
        }
      }),
    ));
  }
}
