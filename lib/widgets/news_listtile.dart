import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'custom_news_tile.dart';

class NewsListTile extends StatefulWidget {
  final String category; // الخاصية الجديدة: التصنيف
  const NewsListTile({super.key, required this.category}); // تحديث المنشئ

  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    isLoading = true; // إعادة تعيين حالة التحميل عند بدء جلب جديد
    setState(() {}); // تحديث الواجهة لعرض مؤشر التحميل
    articles = await NewServices(
      Dio(),
    ).getNews(category: widget.category); // استخدام التصنيف
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return CustomNewsTile(articleModel: (articles[index]));
            },
          );
  }
}
