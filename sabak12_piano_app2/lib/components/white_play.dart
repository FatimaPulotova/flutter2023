import 'package:flutter/material.dart';

class WhitePlay extends StatelessWidget {
  const WhitePlay({super.key, required this.onTap});
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 60,
        color: Colors.white,
      ),
    );
  }
}
