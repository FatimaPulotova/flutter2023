import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:sabak28_news_app_04/constants/api_const.dart';
import 'package:sabak28_news_app_04/model/top_news.dart';
import 'package:sabak28_news_app_04/services/fetch_service.dart';
import 'package:sabak28_news_app_04/view/detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future<void> fetchNews() async {
    topNews = await TopNewsRepo().fetchTopNews();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFE5722),
        title: const Center(
          child: Text(
            'News Agregator',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNews!.article!.length,
              itemBuilder: (context, index) {
                final news = topNews!.article![index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailView(
                          article: news,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.grey[100],
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: CachedNetworkImage(
                              imageUrl: news.urlToImage!,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Image.asset('assets/errorimage.jpg')),
                          // Image.network(
                          //news.urlToImage ?? ApiConst.newsImage),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(news.title.toString()),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
