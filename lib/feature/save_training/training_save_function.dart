


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';

Future trainingSaveFunction(
  String trainingName,
  String load,
  String restTime,
  String serie,
  String repition,
  
  ) async{
  final trainingDataBase = FirebaseFirestore.instance;
final hive = Hive.box<String>("userTrainingBox");
final userId = hive.get("sid");

if(userId == null || userId.isEmpty){
  throw Exception('Erouu');
}

return await trainingDataBase
.collection("users")
.doc(userId)
.collection("saved_training")
.doc(trainingName)
.set({
'load': load,
'resttime': restTime,
'serie': serie,
'repition': repition,
});

}