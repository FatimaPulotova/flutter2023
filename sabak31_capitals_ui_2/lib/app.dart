import 'package:flutter/material.dart';
import 'package:sabak31_capitals_ui_2/constants/app_colors.dart';

import 'package:sabak31_capitals_ui_2/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldColor,
          appBarTheme: const AppBarTheme(color: AppColors.appColor),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          sliderTheme:
              SliderThemeData(thumbShape: SliderComponentShape.noThumb),
          primarySwatch: Colors.blue,
          useMaterial3: true),
      home: const HomeView(),
    );
  }
}
