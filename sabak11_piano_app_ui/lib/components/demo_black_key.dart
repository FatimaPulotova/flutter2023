import 'package:flutter/material.dart';

class DemoBlackKey extends StatefulWidget {
  const DemoBlackKey({
    super.key,
  });

  @override
  State<DemoBlackKey> createState() => _DemoBlackKeyState();
}

class _DemoBlackKeyState extends State<DemoBlackKey> {
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
          color: isPressed ? Colors.grey[900] : Colors.black,
          width: 60,
          height: 200,
          child: Stack(
            children: [
              Transform(
                transform: Matrix4.rotationX(0.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80, left: 20),
                  child: AnimatedPositioned(
                    duration: const Duration(milliseconds: 60),
                    height: isPressed ? 40 : 40,
                    child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(115, 132, 122, 122),
                      radius: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
