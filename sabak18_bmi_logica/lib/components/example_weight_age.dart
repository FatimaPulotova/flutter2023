import 'package:flutter/material.dart';

class WeightAge extends StatefulWidget {
  const WeightAge({super.key});

  @override
  State<WeightAge> createState() => _WeightAgeState();
}

class _WeightAgeState extends State<WeightAge> {
  int increment = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeightAge'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$increment'),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  increment++;
                });

                print('increment');
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
