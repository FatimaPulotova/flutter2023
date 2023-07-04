import 'package:flutter/material.dart';

import 'package:sabak29_news_app_05/model/article.dart';
import 'package:sabak29_news_app_05/them/app_text_styles.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.title,
      textAlign: TextAlign.center,
      style: AppTextStyles.titleTextStyle,
    );
  }
}
