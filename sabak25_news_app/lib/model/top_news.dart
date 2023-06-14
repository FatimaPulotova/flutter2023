import 'package:sabak25_news_app/model/article.dart';

class TopNews {
  TopNews(
      {required this.status,
      required this.totalResults,
      required this.article});
  final String status;
  final int totalResults;
  final List<Article> article;
  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
      status: json['status'],
      totalResults: json['stotalResult'],
      article: List<Article>.from(
        (json['articles']).map((e) => Article.fronJson(e)),
      ),
    );
  }
}
