import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details.dart';

class BackdropContainer extends StatelessWidget {
  const BackdropContainer({super.key, required this.movie});
  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Stack(
        fit: StackFit.expand,
        children: [
          movie.backdropPath.isNotEmpty
              ? CachedNetworkImage(
                imageUrl: "$tmdbBackdropImageBaseURL${movie.backdropPath}",
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(child: SizedBox(width: 50, height: 50, child: CircularProgressIndicator.adaptive())),
                errorWidget: (context, url, error) => Icon(Icons.error),
              )
              : Container(color: const Color.fromARGB(255, 181, 181, 181), child: Icon(Icons.error)),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color.fromARGB(0, 0, 0, 0), const Color.fromARGB(154, 0, 0, 0)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
