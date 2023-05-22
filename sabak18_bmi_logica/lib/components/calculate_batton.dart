import 'package:flutter/material.dart';
import 'package:sabak18_bmi_logica/them/app_colors.dart';
import 'package:sabak18_bmi_logica/them/app_text_style.dart';
import 'package:sabak18_bmi_logica/them/app_texts.dart';

class CalculateBatton extends StatelessWidget {
  const CalculateBatton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.pinkColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          minimumSize: const Size(double.infinity, 73)),
      onPressed: () {},
      child: const Text(
        AppTexts.calculator,
        style: AppTextStyles.calculateStyle,
      ),
    );
  }
}
