// movie_model.dart
class MovieModel {
  final String name;
  final String summary;
  final String? imageUrl;

  MovieModel({required this.name, required this.summary, this.imageUrl});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      name: json['show']['name'],
      summary: json['show']['summary'],
      imageUrl: json['show']['image']?['medium'] ?? '',
    );
  }
}
