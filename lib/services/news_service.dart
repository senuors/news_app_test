import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewServices {
  final Dio dio;

  NewServices(this.dio);

  // الدالة الأصلية لجلب الأخبار العامة
  Future<List<ArticleModel>> getGeneralNews() async {
    return getNews(category: 'general'); // استدعاء الدالة الجديدة مع تصنيف عام
  }

  // الدالة الجديدة لجلب الأخبار حسب التصنيف
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=2054a5996b794a12b7c99b48ce39b4b6&category=$category',
      );
      Map<String, dynamic> JsonData = response.data;
      List<dynamic> articles = JsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        if (article['urlToImage'] != null && article['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            imgURL: article["urlToImage"],
            title: article["title"],
            description: article["description"],
          );
          articlesList.add(articleModel);
        }
      }
      return articlesList;
    } on Exception catch (e) {
      print('Error fetching news for category $category: $e');
      return [];
    }
  }
}
