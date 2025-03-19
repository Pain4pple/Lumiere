import 'package:flutter/material.dart';
import 'package:movie_app/features/movie_list/presentation/widgets/highlighted_movie.dart';
import 'package:movie_app/features/movie_list/presentation/widgets/movie_row_list.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HighlightedMovie(imagePosterUrl: "", imageLogoUrl: "", videoUrl: "", description: ""),
            MovieRowList(movieCategory: "Popular"),
            MovieRowList(movieCategory: "Trending in PH"),
            MovieRowList(movieCategory: "Classics"),
          ],
        ),
      ),
    );
  }
}
