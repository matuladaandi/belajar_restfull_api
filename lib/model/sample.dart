// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_learn/model/github_model.dart';

class Sample {
  final String? name;
  final int? age;
  final List<String>? hobbies;
  final Github? github;

  Sample({
    this.name,
    this.age,
    this.hobbies,
    this.github,
  });

  factory Sample.fromJson(Map<String, dynamic> json){
    return Sample(
        name: json['name'] ?? '', // pada json['name'] harus sesuai dgn di api
        age: json['age'] ?? '',
        hobbies: List<String>.from(json["hobbies"] ?? []),
        github: Github.fromJson(json["github"]),
    );
  }
  

  @override
  String toString() {
    return 'Sample(name: $name, age: $age, hobbies: $hobbies, github: $github)';
  }
}
