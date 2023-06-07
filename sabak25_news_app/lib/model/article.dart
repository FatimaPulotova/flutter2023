import 'package:sabak25_news_app/model/source.dart';

class Article {
  Article(
      {required this.source,
      required this.autor,
      required this.title,
      required this.description,
      required this.url,
      this.urlToImage,
      required this.publishedAt,
      required this.content});
  final Source source;
  final String? autor;
  final String title;
  final String description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String content;
}
