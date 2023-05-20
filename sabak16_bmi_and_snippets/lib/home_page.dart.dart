import 'package:flutter/material.dart';
import 'package:sabak16_bmi_and_snippets/components/startus_card_for_slider.dart';
import 'package:sabak16_bmi_and_snippets/components/status_card.dart';
import 'package:sabak16_bmi_and_snippets/components/status_card2.dart';
import 'package:sabak16_bmi_and_snippets/them/app_colors.dart';
import 'package:sabak16_bmi_and_snippets/them/app_texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                children: const [
                  StatusCard(
                    icon: Icons.male,
                    text: AppTexts.male,
                  ),
                  SizedBox(
                    width: 39,
                  ),
                  StatusCard(
                    icon: Icons.female,
                    text: AppTexts.female,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: const [
                  StatusCardSlider(
                    text: AppTexts.height,
                    text1: '180',
                    text2: 'cm',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: const [
                  StatusCard2(
                    text: AppTexts.weight,
                    san: '60',
                  ),
                  SizedBox(
                    width: 39,
                  ),
                  StatusCard2(
                    text: AppTexts.age,
                    san: '28',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 73,
        width: double.infinity,
        color: AppColors.pinkColor,
        child: const Center(
          child: Text(
            AppTexts.calculator,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
