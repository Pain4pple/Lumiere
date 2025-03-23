import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/domain/models/movie_list.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/movie_details/presentation/screens/movie_details_screen.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({super.key, required this.movie});

  final MovieEntity movie;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  OverlayEntry? _overlayEntry;

  void _showOverlay(BuildContext context) {
    final overlay = Overlay.of(context);

    _overlayEntry = OverlayEntry(
      builder:
          (context) => Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Material(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(widget.movie.title, style: const TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center),
              ),
            ),
          ),
    );

    overlay.insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => _showOverlay(context),
      onLongPressEnd: (_) => _removeOverlay(),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailsScreen(movieId: widget.movie.id)));
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: const Color.fromARGB(209, 12, 10, 15)),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: CachedNetworkImage(
            imageUrl: "$tmdbImageBaseURL${widget.movie.posterPath}",
            width: 150,
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(child: SizedBox(width: 50, height: 50, child: CircularProgressIndicator.adaptive())),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
