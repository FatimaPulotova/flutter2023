import 'package:sabak25_news_app/model/article.dart';

class TopNews {
  TopNews(
      {required this.status,
      required this.totalResults,
      required this.article});
  final String status;
  final int totalResults;
  final Article article;
}
