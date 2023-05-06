// ignore_for_file: public_member_api_docs, sort_constructors_first
class Github {
  final String username;
  final int repositories;
  final bool isGDE;

  Github({
    required this.username,
    required this.repositories,
    required this.isGDE,
  });

  factory Github.fromJson(Map<String, dynamic> json) {
    return Github(
        username: json["username"],
        repositories: json["repositories"],
        isGDE: json["isGDE"]);
  }

  @override
  String toString() => 'Github(username: $username, repositories: $repositories, isGDE: $isGDE)';
}
