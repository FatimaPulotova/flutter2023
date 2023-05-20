import 'package:audioplayers/audioplayers.dart';
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
//   late AudioCache cache; // you have this
// late AudioPlayer player; // create this

// void _playFile() async{
//   player = await cache.  ('my_audio.mp3'); // assign player here
// }

// void _stopFile() {
//   player?.stop(); // stop the file like this
// }
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
                children: [
                  GestureDetector(
                    child: const ContanerWidget(
                      containerdinTexsti: 'Contaner 1',
                      containerdinTexsti2: 'sabak 1',
                      icon: Icons.book,
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnfyYWcYNGx7YZ5ND6LJTBePYuEcNakqfuMN0RPfPu&s',
                      color: Colors.red,
                      nameMusic: 'komuz1.mp3',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContanerWidget(
                    containerdinTexsti: 'Contaner 2',
                    containerdinTexsti2: 'sabak 2',
                    icon: Icons.access_alarm,
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_PmRvBIPomcLVHofgc6qYGuYM4cvwccj2yOxOeroTRQ4mlTClqpo_KNRasrsCbICmN7E&usqp=CAU',
                    color: Colors.green,
                    nameMusic: 'komuz2.mp3',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContanerWidget(
                    containerdinTexsti: 'Contaner 3',
                    containerdinTexsti2: 'sabak 3',
                    icon: Icons.abc,
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnfyYWcYNGx7YZ5ND6LJTBePYuEcNakqfuMN0RPfPu&s',
                    color: Colors.orange,
                    nameMusic: '',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContanerWidget(
                    containerdinTexsti: 'Contaner 4',
                    containerdinTexsti2: 'sabak 4',
                    icon: Icons.amp_stories,
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnfyYWcYNGx7YZ5ND6LJTBePYuEcNakqfuMN0RPfPu&s',
                    color: Colors.yellow,
                    nameMusic: '',
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
                    nameMusic: '',
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
                    nameMusic: '',
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
