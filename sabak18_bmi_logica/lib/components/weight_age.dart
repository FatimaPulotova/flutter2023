import 'package:flutter/material.dart';
import 'package:sabak18_bmi_logica/components/circular_nutton.dart';
import 'package:sabak18_bmi_logica/them/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.addbasuu,
    required this.removbasuu,
  });

  final String text;
  final String san;
  final void Function() addbasuu;
  final void Function() removbasuu;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.titlestyle,
        ),
        Text(
          san,
          style: AppTextStyles.sanTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
              icon: Icons.remove,
              basuu: removbasuu,
            ),
            const SizedBox(
              width: 10,
            ),
            CircularButton(
              icon: Icons.add,
              basuu: addbasuu,
            ),
          ],
        ),
      ],
    );
  }
}
