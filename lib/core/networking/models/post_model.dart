class PostModel {
  final String title;
  final String description;
  final String link;

  PostModel({
    required this.title,
    required this.description,
    required this.link,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      link: json['url'] ?? '',
    );
  }
}
