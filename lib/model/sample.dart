// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sample {
  final String? name;
  final int? age;
  final List<String>? hobbies;

  Sample({this.name, this.age, this.hobbies});

  factory Sample.fromJson(Map<String, dynamic> json){
    return Sample(
        name: json['name'] ?? '', // pada json['name'] harus sesuai dgn di api
        age: json['age'] ?? '',
        hobbies: List<String>.from(json["hobbies"] ?? []) 
    );
  }
  @override
  String toString() => 'Sample(name: $name, age: $age, hobbies: $hobbies)';
  
}
