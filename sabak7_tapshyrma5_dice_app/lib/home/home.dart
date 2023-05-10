import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int firstDice = 1;
  int secondDice = 1;
  void chinge() {
    setState(() {
      firstDice = Random().nextInt(6) + 1;
      secondDice = Random().nextInt(6) + 1;
    });

    print(firstDice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 11, 209),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 204, 70, 95),
        title: const Text(
          'DiceApp',
          style: TextStyle(color: Color.fromARGB(255, 237, 232, 232)),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      chinge();
                    },
                    child: Image.asset('images/dice$firstDice.png'),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      chinge();
                    },
                    child: Image.asset('images/dice$secondDice.png'),
                  ),
                ),
              ],
            ),
          ),
          Text('1-оюнчу')
        ],
      ),
    );
  }
}
