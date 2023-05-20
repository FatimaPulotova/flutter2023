import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak13_piano_app_and_extract/model_list.dart';

class ContanerWidget extends StatefulWidget {
  const ContanerWidget(
      {super.key,
      required this.containerdinTexsti,
      required this.containerdinTexsti2,
      this.icon,
      required this.image,
      this.image2,
      required this.color,
      required this.nameMusic});
  final String containerdinTexsti, containerdinTexsti2;
  final IconData? icon;
  final String image;
  final String? image2;
  final Color color;
  final String nameMusic;

  @override
  State<ContanerWidget> createState() => _ContanerWidgetState();
}

AudioPlayer player = AudioPlayer();

class _ContanerWidgetState extends State<ContanerWidget> {
  void _playSound() async {
    player.play(AssetSource('komuz$firstDice.mp3'));
    player.stop();
  }

  int firstDice = 1;
  int secondDice = 1;
  void chinge() {
    setState(() {
      firstDice = Random().nextInt(6) + 1;
      secondDice = Random().nextInt(6) + 1;
    });

    print(firstDice);
  }
  // void _stopSound() {
  //   player.stop();
  // }
  // void play() {
  //   final music = AudioPlayer().play(AssetSource("${widget.nameMusic}.mp3"));
  //   final music1 = AudioPlayer().stop();
  // }

  bool playing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        _playSound();
        // _stopSound();

        // if (playing) {
        //   setState(() {
        //     playing = false;
        //   });
        // } else {
        //   playing = true;
        // }
      },
      child: Container(
        padding: const EdgeInsets.only(left: 110, top: 15),
        width: double.infinity,
        height: 90,
        color: widget.color,
        child: Row(
          children: [
            Column(
              children: [
                Text(widget.containerdinTexsti),
                Text(widget.containerdinTexsti2),
                Icon(widget.icon),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                Image.network(
                  widget.image,
                  height: 50,
                  width: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
