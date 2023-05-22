import 'package:flutter/cupertino.dart';
import 'package:sabak18_bmi_logica/them/app_colors.dart';
import 'package:sabak18_bmi_logica/them/app_text_style.dart';

class Height extends StatelessWidget {
  const Height({
    super.key,
    required this.text,
    required this.text1,
    required this.text2,
    required this.height,
    required this.onChanged,
  });

  final String text;
  final String text1;
  final String text2;
  final double height;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.titlestyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              text1,
              style: AppTextStyles.sanTextStyle,
            ),
            Text(
              text2,
              style: AppTextStyles.titlestyle,
            ),
          ],
        ),
        SizedBox(
          width: 300,
          child: CupertinoSlider(
            value: height.toDouble(),
            min: 0,
            max: 240,
            activeColor: AppColors.whiteColor,
            thumbColor: AppColors.pinkColor,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
