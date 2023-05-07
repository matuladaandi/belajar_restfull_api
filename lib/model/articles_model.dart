// ignore_for_file: public_member_api_docs, sort_constructors_first
class Article {
  
  final int? id_article;
  final String? title;
  final String? subtitle;

  Article({
    this.id_article,
    this.title,
    this.subtitle,
  });

  factory Article.fromJson(Map<String, dynamic> json){
    return Article(
      id_article: json["id_article"] ?? 0,
      title: json["title"] ?? '',
      subtitle: json["subtitle"] ?? '',
    );
  }

  @override
  String toString() => 'Article(id_article: $id_article, title: $title, subtitle: $subtitle)';
  
 }

