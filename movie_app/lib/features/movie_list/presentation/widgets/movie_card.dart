import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/constants.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.imagePosterUrl, required this.movieTitle});

  final String imagePosterUrl;
  final String movieTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: const Color.fromARGB(209, 12, 10, 15)),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: CachedNetworkImage(
          imageUrl: "$tmdbImageBaseURL$imagePosterUrl",
          width: 150,
          fit: BoxFit.cover,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
