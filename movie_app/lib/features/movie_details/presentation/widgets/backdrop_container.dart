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
          CachedNetworkImage(
            imageUrl: "$tmdbBackdropImageBaseURL${movie.backdropPath}",
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(child: SizedBox(width: 50, height: 50, child: CircularProgressIndicator.adaptive())),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
