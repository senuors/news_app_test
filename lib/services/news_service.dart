import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewServices {
  final Dio dio;

  NewServices(this.dio);
  Future<List<ArticleModel>> getGeneralNews() async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=2054a5996b794a12b7c99b48ce39b4b6',
      );
      Map<String, dynamic> JsonData = response.data;
      List<dynamic> articles = JsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          imgURL: article["urlToImage"],
          title: article["title"],
          description: article["description"],
        );
        articlesList.add(articleModel);
      }
      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}
