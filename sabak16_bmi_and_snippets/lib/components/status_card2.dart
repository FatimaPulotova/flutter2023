import 'package:flutter/material.dart';
import 'package:sabak16_bmi_and_snippets/components/circular_nutton.dart';
import 'package:sabak16_bmi_and_snippets/them/app_colors.dart';

class StatusCard2 extends StatelessWidget {
  const StatusCard2({super.key, required this.text, required this.san});

  final String text;
  final String san;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColors.cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Text(
              san,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularButton(
                  icon: Icons.remove,
                ),
                SizedBox(
                  width: 10,
                ),
                CircularButton(
                  icon: Icons.add,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
