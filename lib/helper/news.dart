import 'dart:convert';
import 'package:sqflite_curd/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = <ArticleModel>[];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=d12880bb63ce4bfdb2a5a8f15c4d190b";
    var response = await http.get(Uri.parse(url));
    var jasonData = jsonDecode(response.body);
    if (jasonData["status"] == "ok") {
      jasonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element["title"],
            content: element["content"],
            desc: element["description"],
            title: element["title"],
            url: element["url"],
            urlToImage: element["urlToImage"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNewsClass {
  List<ArticleModel> news = <ArticleModel>[];

  Future<void> getNews(String categories) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=$categories&apiKey=d12880bb63ce4bfdb2a5a8f15c4d190b";
    var response = await http.get(Uri.parse(url));
    var jasonData = jsonDecode(response.body);
    if (jasonData["status"] == "ok") {
      jasonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
            author: element["title"],
            content: element["content"],
            desc: element["description"],
            title: element["title"],
            url: element["url"],
            urlToImage: element["urlToImage"],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
