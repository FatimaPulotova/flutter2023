import 'package:sabak28_news_app_04/model/source.dart';

class Article {
  Article(
      {this.source,
      this.autor,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});
  final Source? source;
  final String? autor;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        source: Source.fromJson(json['source']),
        autor: json[' autor'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publishedAt: json['publishedAt'],
        content: json['content']);
  }
}
