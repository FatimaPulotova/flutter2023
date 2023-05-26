import 'package:flutter/material.dart';
import 'package:sabak18_bmi_logica/components/all_calculator.dart';
import 'package:sabak18_bmi_logica/them/app_colors.dart';
import 'package:sabak18_bmi_logica/them/app_texts.dart';

import '../them/app_text_style.dart';

class ResultatPage extends StatelessWidget {
  const ResultatPage({super.key, required this.metri, required this.salmak});
  final double metri;
  final int salmak;

  @override
  Scaffold build(BuildContext context) {
    double resultattar = BmiCalculator().bmi(height: metri, weight: salmak);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text('ResultatPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 11, right: 9, top: 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 14),
              child: Text(
                'Жыйынтык',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 315,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.cardColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    BmiCalculator().bmiResult(resultattar),
                    style: const TextStyle(fontSize: 24, color: Colors.green),
                  ),
                  Text(
                    resultattar.toStringAsFixed(1).toString(),
                    style: const TextStyle(
                      fontSize: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      BmiCalculator().bmiDescription(resultattar),
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.pinkColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
            minimumSize: const Size(double.infinity, 73)),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          AppTexts.kairaEsepte,
          style: AppTextStyles.calculateStyle,
        ),
      ),
    );
  }
}
