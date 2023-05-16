import 'package:flutter/material.dart';
import 'package:sabak15_quize_app_ulantuu/constants/app_color.dart';
import 'package:sabak15_quize_app_ulantuu/constants/app_text_styles.dart';
import 'package:sabak15_quize_app_ulantuu/constants/texts.dart';
import 'package:sabak15_quize_app_ulantuu/usefile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UseQuize useQuize = UseQuize();
  List<Icon> iconAluu = [];

  void teksher(bool koldonu) {
    bool correctAnswer = useQuize.JoopAluu();
    setState(() {
      if (useQuize.isFinished() == true) {
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Test QuizeApp'),
              content: SingleChildScrollView(
                child: ListBody(children: const <Widget>[
                  Text('Сиздин тест аягына келди'),
                ]),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Жок'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Ооба'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
        useQuize.indexZero();
        iconAluu = [];
      } else {
        if (correctAnswer == koldonu) {
          iconAluu.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          iconAluu.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        useQuize.nextQwestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const Center(
          child: Text(
            'Тапшырма 7',
            style: AppTexstStyles.appBarTexstStyle,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              useQuize.SurooAluu(),
              style: const TextStyle(
                color: AppColors.whiteColor,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 102,
            ),
            SizedBox(
              height: 70,
              width: 335,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.trueBgColor,
                ),
                onPressed: () {
                  teksher(true);
                },
                child: const Text(
                  AppTexts.tuura,
                  style: AppTexstStyles.trueStyles,
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 70,
              width: 335,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.falseBgColor,
                ),
                onPressed: () {
                  teksher(false);
                },
                child: const Text(
                  AppTexts.tuuraEmes,
                  style: AppTexstStyles.trueStyles,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: iconAluu.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return iconAluu[index];
                  }),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
