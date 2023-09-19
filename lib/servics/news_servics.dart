import 'package:dio/dio.dart';
import 'package:newcloud/models/Article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> Getnews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=caf9a93a1675480b8987f69e3dafa9f4&country=us&category=general');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlelist = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          subtitle: article['description'],
          title: article['title']);
      articlelist.add(articleModel);
    }
    return articlelist;
  }
}
