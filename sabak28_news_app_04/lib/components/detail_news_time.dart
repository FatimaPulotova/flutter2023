import 'package:flutter/material.dart';

class DetailNewsTime extends StatelessWidget {
  const DetailNewsTime({
    super.key,
    required this.newsTime,
  });

  final String newsTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.access_time),
        const SizedBox(
          width: 10,
        ),
        Text(newsTime)
      ],
    );
  }
}
