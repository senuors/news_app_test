import 'package:dio/dio.dart';

class NewServices {
  final Dio dio;

  NewServices(this.dio);

  void getHttpGeneral() async {
    final responce = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=2054a5996b794a12b7c99b48ce39b4b6',
    );
    print(responce);
  }

  // void getHttpsports() async {
  //   final responce = await dio.get(
  //     'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=2054a5996b794a12b7c99b48ce39b4b6',
  //   );
  //   print(responce);
  }
}
