import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/video/domain/models/movie_with_trailer.dart';

class MovieDetailsOverlay extends StatelessWidget {
  final MovieWithTrailer movie;
  const MovieDetailsOverlay({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 150,
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: const Color.fromARGB(209, 12, 10, 15)),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: "$tmdbImageBaseURL${movie.posterPath}",
                width: 100,
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(child: SizedBox(width: 50, height: 50, child: CircularProgressIndicator.adaptive())),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600), textAlign: TextAlign.start),
                Text(movie.overview, maxLines: 4, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12), textAlign: TextAlign.start),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
