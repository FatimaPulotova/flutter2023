import 'package:flutter/material.dart';

class ContanerWidget extends StatelessWidget {
  const ContanerWidget(
      {super.key,
      required this.containerdinTexsti,
      required this.containerdinTexsti2,
      this.icon,
      required this.image,
      this.image2,
      required this.color});
  final String containerdinTexsti, containerdinTexsti2;
  final IconData? icon;
  final String image;
  final String? image2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 110, top: 15),
      width: double.infinity,
      height: 90,
      color: color,
      child: Row(
        children: [
          Column(
            children: [
              Text(containerdinTexsti),
              Text(containerdinTexsti2),
              Icon(icon),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            children: [
              Image.network(
                image,
                height: 50,
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
