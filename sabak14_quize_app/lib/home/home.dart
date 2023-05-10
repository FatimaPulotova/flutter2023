import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sabak14_quize_app/constants/app_color.dart';
import 'package:sabak14_quize_app/constants/app_text_styles.dart';
import 'package:sabak14_quize_app/constants/texts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            const Text(
              'Кыргызстанда 7 область барбы?',
              style: TextStyle(
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
                onPressed: () {},
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
                onPressed: () {},
                child: const Text(
                  AppTexts.tuuraEmes,
                  style: AppTexstStyles.trueStyles,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 40,
                ),
                Icon(
                  Icons.highlight_off,
                  color: Colors.red,
                  size: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
