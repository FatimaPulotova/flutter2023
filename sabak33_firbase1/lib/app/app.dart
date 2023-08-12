import 'package:flutter/material.dart';
import 'package:sabak33_firbase1/views/home_view.dart';
import 'package:sabak33_firbase1/views/todo_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoView(),
    );
  }
}
