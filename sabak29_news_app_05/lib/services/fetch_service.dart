import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:sabak29_news_app_05/constants/api_const.dart';
import 'package:sabak29_news_app_05/model/top_news.dart';

class TopNewsRepo {
  final http.Client client = http.Client();
  Future<TopNews?> fetchTopNews([String? domain]) async {
    final Uri uri = Uri.parse(ApiConst.topNews(domain));
    final http.Response response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      print('____________________');
      print(response.body.runtimeType);
      print('_________________');
      final data = jsonDecode(response.body);
      print(data.runtimeType);
      print('_________________');
      final topNews = TopNews.fromJson(data);
      print(topNews);
      return topNews;
    }
    return null;
  }
}
