import 'package:flutter/material.dart';
import 'package:sabak30_capitals_ui_1/constants/app_colors.dart';
import 'package:sabak30_capitals_ui_1/constants/app_text_style.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('0', style: AppTextStyle.num1Style),
                Text(
                  '32',
                  style: AppTextStyle.num2Style,
                ),
                Text(
                  '0',
                  style: AppTextStyle.num3Style,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          const Text(
            '3',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 30,
          ),
          const Icon(Icons.favorite, color: AppColors.red),
          const Icon(Icons.favorite, color: AppColors.red),
          const Icon(Icons.favorite, color: AppColors.red),
          const Icon(Icons.more_vert),
        ],
        title: const Text('TestView'),
      ),
      body: Column(
        children: [
          Slider(
            activeColor: Colors.black,
            value: 200,
            onChanged: (v) {},
            min: 0,
            max: 200,
          ),
          const Text(
            'Paris',
            style: AppTextStyle.capitalsStyle,
          ),
        ],
      ),
    );
  }
}
