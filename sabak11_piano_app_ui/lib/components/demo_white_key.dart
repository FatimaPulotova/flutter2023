import 'package:flutter/material.dart';

class DemoWhiteKey extends StatefulWidget {
  const DemoWhiteKey({
    super.key,
  });

  @override
  State<DemoWhiteKey> createState() => _DemoWhiteKeyState();
}

class _DemoWhiteKeyState extends State<DemoWhiteKey> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
        child: Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
              color: isPressed ? Colors.grey[300] : Colors.white,
              border: Border.all(color: Colors.black, width: 1)),
        ),
      ),
    );
  }
}
