import 'package:flutter/material.dart';
import 'package:sabak18_bmi_logica/components/example_weight_age.dart';
import 'package:sabak18_bmi_logica/example.dart';

import 'package:sabak18_bmi_logica/home_page.dart.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}
