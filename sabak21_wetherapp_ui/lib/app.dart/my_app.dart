import 'package:flutter/material.dart';
import 'package:sabak21_wetherapp_ui/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomeView(),
    );
  }
}
