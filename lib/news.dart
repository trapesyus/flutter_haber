import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_haber/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];
  Future <void> getNews() async{
    var url ="https://newsapi.org/v2/top-headlines?country=tr&apiKey=0de3c2b3c26346608435773ed73c5e28";

    final response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if(jsonData['status'] == "ok")
    {
      jsonData["articles"].forEach((element){
        if(element["urlToImage"] != null && element['description'] != null)
        {
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['context']
          );

          news.add(articleModel);

        }
      });
    }
  }
}
class CategoryNewsClass {
  List<ArticleModel> news = [];

  Future <void> getNews(String category) async {

    String url ="https://newsapi.org/v2/top-headlines?country=tr&category=$category&apiKey=0de3c2b3c26346608435773ed73c5e28";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['context']
          );
          news.add(articleModel);
        }
      });
    }
  }
  }
