import 'package:news_app/model.dart';
import 'package:dio/dio.dart';

class Api {
  static Future<model> Get(String category) async {
    Dio dio = Dio();
    var res = await dio.get(
        "https://newsapi.org/v2/top-headlines?category=$category&apiKey=81684c88b7744ffcba981735c218bc15"
    );
    return model.api(res.data);
  }
}