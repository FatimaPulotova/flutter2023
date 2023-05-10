import 'package:flutter/material.dart';

import 'components/costom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Center(
          child: Text(
            'Componens and Constants',
            selectionColor: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVQnUcXs97xJtsS3sjnhZZZMzwTw1kEGq7Dg&usqp=CAU'),
            const CostomButton(
              icon: Icons.phone,
              text: 'Телефон номер',
            ),
            const SizedBox(
              height: 15,
            ),
            const CostomButton(
              icon: Icons.mail,
              text: 'Электрондук почта',
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
