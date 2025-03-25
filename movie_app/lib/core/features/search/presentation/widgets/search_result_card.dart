import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/features/search/domain/models/search_result_model.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/movie_details/presentation/screens/movie_details_screen.dart';

class SearchResultsCard extends StatefulWidget {
  const SearchResultsCard({super.key, required this.movie});

  final SearchMovieEntity movie;

  @override
  State<SearchResultsCard> createState() => _SearchResultsCardState();
}

class _SearchResultsCardState extends State<SearchResultsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailsScreen(movieId: widget.movie.id)));
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: const Color.fromARGB(209, 12, 10, 15)),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child:
              widget.movie.posterPath != ''
                  ? CachedNetworkImage(
                    imageUrl: "$tmdbImageBaseURL${widget.movie.posterPath}",
                    width: 150,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  )
                  : Container(
                    width: 150,
                    color: const Color.fromARGB(255, 181, 181, 181),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.movie.title, style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center),
                        Text('(No poster available)'),
                      ],
                    ),
                  ),
        ),
      ),
    );
  }
}
