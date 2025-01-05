import 'dart:convert';
import 'package:http/http.dart' as http;
import 'movie_model.dart';

class MovieServices {
  // Method to fetch all movies
  Future<List<MovieModel>> fetchMovies() async {
    final response =
        await http.get(Uri.parse('https://api.tvmaze.com/search/shows?q=all'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => MovieModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  // Method to search movies based on query
  Future<List<MovieModel>> searchMovies(String query) async {
    final response = await http
        .get(Uri.parse('https://api.tvmaze.com/search/shows?q=$query'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => MovieModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }

  // Method to fetch search suggestions based on query
  Future<List<String>> searchSuggestions(String query) async {
    if (query.isEmpty) {
      return []; // Return empty list if the query is empty
    }

    final response = await http
        .get(Uri.parse('https://api.tvmaze.com/search/shows?q=$query'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data
          .map((item) =>
              item['show']['name'] as String) // Extract the movie names
          .toList();
    } else {
      throw Exception('Failed to load suggestions');
    }
  }
}
