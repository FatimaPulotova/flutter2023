import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak12_piano_app2/components/white_play.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DemoScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('zvuk-notyi-do.mp3'));
                }),
                const SizedBox(width: 10),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('zvuk-notyi-re.mp3'));
                }),
                const SizedBox(width: 10),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('zvuk-notyi-mi.mp3'));
                }),
                const SizedBox(width: 10),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('zvuk-notyi-fa.mp3'));
                }),
                const SizedBox(width: 10),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('zvuk-notyi-sol.mp3'));
                }),
                const SizedBox(width: 10),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('zvuk-notyi-lya.mp3'));
                }),
                const SizedBox(width: 10),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('zvuk-notyi-si.mp3'));
                }),
                const SizedBox(width: 10),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('zvuk-notyi-do-vtoroy.mp3'));
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
