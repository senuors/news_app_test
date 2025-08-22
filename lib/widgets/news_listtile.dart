import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'custom_news_tile.dart';

class NewsListTile extends StatefulWidget {
  NewsListTile({super.key});

  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  List<ArticleModel> articles = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewServices(Dio()).getGeneralNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return CustomNewsTile(articleModel: (articles[index]));
      },
    );
  }
}
