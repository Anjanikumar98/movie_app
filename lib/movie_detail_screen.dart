import 'package:flutter/material.dart';
import 'package:movie_app/movie_model.dart';

// Avoid ambiguity by using an alias for the Flutter image import
import 'package:flutter/widgets.dart' as flutter_widgets;

class DetailsScreen extends StatelessWidget {
  final MovieModel movie;

  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Use the alias for Image widget to resolve ambiguity
            flutter_widgets.Image.network(movie.imageUrl ?? ''),
            const SizedBox(height: 10),
            Text(movie.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(movie.summary),
          ],
        ),
      ),
    );
  }
}
