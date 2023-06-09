import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabak18_bmi_logica/components/calculate_batton.dart';
import 'package:sabak18_bmi_logica/components/height.dart';
import 'package:sabak18_bmi_logica/components/male_female.dart';
import 'package:sabak18_bmi_logica/components/resultat_page.dart';
import 'package:sabak18_bmi_logica/components/status_card.dart';
import 'package:sabak18_bmi_logica/components/weight_age.dart';
import 'package:sabak18_bmi_logica/them/app_colors.dart';
import 'package:sabak18_bmi_logica/them/app_texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = true;
  int weight = 60;
  int age = 23;
  double height = 180;

  void resultattar() {
    final resultat = weight / pow(height / 100, 2);
    if (resultat <= 18.5) {
      // print('Сиз арыксыз:$resultat');
      _showAlertDialog(context, 'Сиз арыксыз');
    } else if (resultat >= 18.6 && resultat <= 25) {
      // print('Сиздин салмагыныз нормалдуу:$resultat');
      _showAlertDialog(context, 'Сиздин салмагыныз нормалдуу');
    } else if (resultat >= 25.1 && resultat <= 30) {
      // print('Сиз ашыкча салмактуусуз:$resultat');
      _showAlertDialog(context, 'Сиз ашыкча салмактуусуз');
    } else {
      // print('Сиз семизсиз:$resultat');
      _showAlertDialog(context, 'Сиз семизсиз');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Center(child: Text(AppTexts.bmi)),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = true;
                          print('object1');
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppTexts.male,
                        isTrue: isTrue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = false;
                          print('object2');
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: AppTexts.female,
                        isTrue: !isTrue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            StatusCard(
              child: Height(
                text: AppTexts.height,
                text1: '${height.toInt()}',
                text2: 'cm',
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
                height: height,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.weight,
                      san: '$weight',
                      removbasuu: () {
                        setState(() {
                          weight--;
                        });
                      },
                      addbasuu: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.age,
                      san: '$age',
                      removbasuu: () {
                        setState(() {
                          age--;
                        });
                      },
                      addbasuu: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateBatton(
        onPressed: () {
          resultattar();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultatPage( 
                metri: height,
                salmak: weight,
              ),
            ),
          );
        },
      ),
    );
  }
}

Future<void> _showAlertDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.pinkColor,
        title: const Text(AppTexts.bmi, textAlign: TextAlign.center),
        content: Text(text, textAlign: TextAlign.center),
        actions: <Widget>[
          TextButton(
              child: const Text('Чыгуу'),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      );
    },
  );
}
