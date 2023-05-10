import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sabak13_piano_app_and_extract/components/contaner_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extract Widget'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Column(
                children: const [
                  ContanerWidget(
                    containerdinTexsti: 'Contaner 1',
                    containerdinTexsti2: 'sabak 1',
                    icon: Icons.book,
                    image:
                        'https://kartinkin.net/uploads/posts/2022-02/1645532117_1-kartinkin-net-p-kartinki-knigi-dlya-prezentatsii-1.jpg',
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContanerWidget(
                    containerdinTexsti: 'Contaner 2',
                    containerdinTexsti2: 'sabak 2',
                    icon: Icons.access_alarm,
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_PmRvBIPomcLVHofgc6qYGuYM4cvwccj2yOxOeroTRQ4mlTClqpo_KNRasrsCbICmN7E&usqp=CAU',
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContanerWidget(
                    containerdinTexsti: 'Contaner 3',
                    containerdinTexsti2: 'sabak 3',
                    icon: Icons.abc,
                    image:
                        'https://vjoy.cc/wp-content/uploads/2020/07/uchim_alfavit_21_28145750.jpg',
                    color: Colors.orange,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContanerWidget(
                    containerdinTexsti: 'Contaner 4',
                    containerdinTexsti2: 'sabak 4',
                    icon: Icons.amp_stories,
                    image:
                        'https://instaplus.me/blog/wp-content/uploads/2021/01/Instagram-influencer-marketing.png',
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContanerWidget(
                    containerdinTexsti: 'Contaner 5',
                    containerdinTexsti2: 'sabak 5',
                    icon: Icons.assignment_late,
                    image:
                        'https://legionmurmansk.ru/images/thumbnails/800/700/detailed/2/%D0%A0%D0%A4_%D0%B1%D0%B5%D0%B7_%D0%B3%D0%B5%D1%80%D0%B1%D0%B0_nnib-ki.jpg',
                    color: Colors.indigo,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContanerWidget(
                    containerdinTexsti: 'Contaner 6',
                    containerdinTexsti2: 'sabak 6',
                    icon: Icons.ac_unit_outlined,
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnfyYWcYNGx7YZ5ND6LJTBePYuEcNakqfuMN0RPfPu&s',
                    color: Colors.amber,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
