class ExerciseModel {
  String? load;
  String? restTime;
  String? repetion;
  String? serie;

  ExerciseModel({this.load, this.repetion, this.restTime, this.serie});

  factory ExerciseModel.fromJson(Map<String, dynamic> map) {
    return ExerciseModel(
      load: map["load"],
      restTime: map["restTime"],
      repetion: map["repetion"],
      serie: map["serie"],
    );
  }

  Map<String, dynamic> toJson(ExerciseModel model) {
    return {
      "load": model.load,
      "restTime": model.restTime,
      "repetion": model.repetion,
      "serie": model.serie
    };
  }
}
