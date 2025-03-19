import 'package:flutter/material.dart';

class HighlightedMovie extends StatefulWidget {
  const HighlightedMovie({super.key, required this.imagePosterUrl, required this.imageLogoUrl, required this.videoUrl, required this.description});

  final String imagePosterUrl;
  final String imageLogoUrl;
  final String videoUrl;
  final String description;

  @override
  State<HighlightedMovie> createState() => _HighlightedMovieState();
}

class _HighlightedMovieState extends State<HighlightedMovie> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
