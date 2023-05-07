// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_learn/model/articles_model.dart';
import 'package:flutter_learn/model/github_model.dart';

class Sample {
  final String? name;
  final int? age;
  final List<String>? hobbies;
  final Github? github;
  final List<Article>? articles;

  Sample({this.name, this.age, this.hobbies, this.github, this.articles});

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
      name: json['name'] ?? '', // pada json['name'] harus sesuai dgn di api
      age: json['age'] ?? '',
      hobbies: List<String>.from(json["hobbies"] ?? []),
      github: Github.fromJson(json["github"]),
      articles: List<Article>.from(
          json["articles"].map((articles) => Article.fromJson(articles)) ?? []),
    );
  }

  @override
  String toString() {
    return 'Sample(name: $name, age: $age, hobbies: $hobbies, github: $github, articles: $articles)';
  }
}
