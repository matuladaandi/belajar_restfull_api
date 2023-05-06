class Sample {
  final String? name;
  final int? age;

  Sample({this.name, this.age});

  factory Sample.fromJson(Map<String, dynamic> json){
    return Sample(
        name: json['name'] ?? '', // pada json['name'] harus sesuai dgn di api
        age: json['age'] ?? '', 
    );
  }

}
