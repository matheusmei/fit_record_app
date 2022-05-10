import 'exercise_model.dart';

class MuscularGroupModel {
  String? name;
  List<ExerciseModel>? exercises;

  MuscularGroupModel({this.name, this.exercises});

  factory MuscularGroupModel.fromJson(Map<String, dynamic> map) {
    return MuscularGroupModel(
        name: map["name"] ?? "",
        exercises: map["exercises"] == null
            ? []
            : (map["exercises"] as List)
                .map((e) => ExerciseModel.fromJson(e))
                .toList());
  }
}
