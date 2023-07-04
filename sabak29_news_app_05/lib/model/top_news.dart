import 'package:sabak29_news_app_05/model/article.dart';

class TopNews {
  TopNews({
    this.status,
    required this.totalResults,
    this.article,
  });

  final String? status;
  final int? totalResults;
  final List<Article>? article;
  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
      status: json['status'],
      totalResults: json['totalResult'],
      article: List<Article>.from(
        (json['articles']).map((e) => Article.fromJson(e)),
      ),
    );
  }
}
