import 'package:fit_record_app/widgets/componation/colors_app.dart';
import 'package:fit_record_app/widgets/componation/font_app.dart';
import 'package:flutter/material.dart';

class TrainingModeCard extends StatelessWidget {
  final String trainingName;
  final AssetImage trainingImage;
  final Function() onPressed;

  const TrainingModeCard(
      {Key? key, required this.trainingName, required this.trainingImage, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        child: Container(
          width: 264,
          height: 165,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [ColorsApp.maincolor1, ColorsApp.maincolor3])),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: 204,
              height: 162,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: trainingImage,
                  fit: BoxFit.fill,
                  opacity: 0.5,
                ),
              ),
              child: Center(
                child: Text(trainingName,
                    textAlign: TextAlign.center,
                    style: FontApp.mainfont30.copyWith(
                      color: ColorsApp.maincolor4,
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
