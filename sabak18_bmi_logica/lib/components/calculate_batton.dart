import 'package:flutter/material.dart';
import 'package:sabak18_bmi_logica/them/app_colors.dart';
import 'package:sabak18_bmi_logica/them/app_text_style.dart';
import 'package:sabak18_bmi_logica/them/app_texts.dart';

class CalculateBatton extends StatelessWidget {
  const CalculateBatton({super.key, required this.onPressed});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.pinkColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
          minimumSize: const Size(double.infinity, 73)),
      onPressed: onPressed,
      child: const Text(
        AppTexts.calculator,
        style: AppTextStyles.calculateStyle,
      ),
    );
  }
}
