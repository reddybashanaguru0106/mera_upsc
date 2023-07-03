import 'dart:convert';
// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Article>> fetchNewsArticles({String category = 'sports'}) async {
  const apiKey =
      'b169d667a31849109b6e085c294cb87c'; // Replace with your actual API key
  final url = Uri.https('newsapi.org', '/v2/top-headlines', {
    'apiKey': apiKey,
    'pageSize': '50',
    'language': 'en',
    'category': category
  });

  // ignore: avoid_print
  print(url);

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final articles = jsonData['articles'] as List<dynamic>;
    final validArticles = articles.where((el) {
      return el['title'] != null &&
          el['urlToImage'] != null &&
          el['description'] != null;
    });
    return validArticles
        .map((articleJson) => Article.fromJson(articleJson))
        .toList();
  } else {
    throw Exception('Failed to fetch news articles');
  }
}

class Article {
  final String title;
  final String description;
  final String imageUrl;

  Article({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      imageUrl: json['urlToImage'] ?? "",
    );
  }
}


//Example for everything endpoint

// {
// -"source": {
// "id": "the-washington-post",
// "name": "The Washington Post"
// },
// "author": "Bryan Pietsch, Jennifer Hassan",
// "title": "Ukraine live briefing: Revolt calls into question Putin's grip on power and Wagner Group's future - The Washington Post",
// "description": "The rebellion led by Yevgeniy Prigozhin illuminated “cracks in the facade” of Putin’s leadership, Secretary of State Antony Blinken said.",
// "url": "https://www.washingtonpost.com/world/2023/06/26/russia-ukraine-war-news-wagner-putin/",
// "urlToImage": "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/I73XPACWLKU7UEUCUFO63KOWPE_size-normalized.jpg&w=1440",
// "publishedAt": "2023-06-26T09:38:00Z",
// "content": "The short-lived rebellion by Wagner Group leader Yevgeniy Prigozhin has forced a closer examination of Russian President Vladimir Putins hold on power. Russias political system is showing its fragili… [+3810 chars]"
// },