import 'package:sabak28_news_app_04/model/article.dart';

class TopNews {
  TopNews({
    this.status,
    this.totalResults,
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

// class TopNews {
//  final String? status;
//  final int? totalResults;
//  final List<Article>? article;


//   TopNews({this.status, this.totalResults, this.articles});

//   TopNews.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     totalResults = json['totalResults'];
//     if (json['articles'] != null) {
//       articles = <Articles>[];
//       json['articles'].forEach((v) {
//         articles!.add(new Articles.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['totalResults'] = this.totalResults;
//     if (this.articles != null) {
//       data['articles'] = this.articles!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Articles {
//   Source? source;
//   String? author;
//   String? title;
//   String? description;
//   String? url;
//   String? urlToImage;
//   String? publishedAt;
//   String? content;

//   Articles(
//       {required this.source,
//       this.author,
//      required this.title,
//       this.description,
//      required this.url,
//       this.urlToImage,
//      required this.publishedAt,
//       this.content});

//   Articles.fromJson(Map<String, dynamic> json) {
//     source =
//         json['source'] != null ? new Source.fromJson(json['source']) : null;
//     author = json['author'];
//     title = json['title'];
//     description = json['description'];
//     url = json['url'];
//     urlToImage = json['urlToImage'];
//     publishedAt = json['publishedAt'];
//     content = json['content'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.source != null) {
//       data['source'] = this.source!.toJson();
//     }
//     data['author'] = this.author;
//     data['title'] = this.title;
//     data['description'] = this.description;
//     data['url'] = this.url;
//     data['urlToImage'] = this.urlToImage;
//     data['publishedAt'] = this.publishedAt;
//     data['content'] = this.content;
//     return data;
//   }
// }

// class Source {
//   String? id;
//   String? name;

//   Source({this.id, this.name});

//   Source.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     return data;
//   }
// }