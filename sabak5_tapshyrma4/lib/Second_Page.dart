import 'package:flutter/material.dart';

class IamRich extends StatelessWidget {
  const IamRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            'I am Rich',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'I\'m Rich',
              style: TextStyle(fontSize: 48, fontFamily: "Sofia-Regular"),
            ),
            Image.asset(
              'assets/images/Diamond.png',
              height: 300,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
