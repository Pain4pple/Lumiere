import 'package:flutter/material.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details.dart';
import 'package:intl/intl.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key, required this.movie});
  final MovieDetails movie;

  String formatDuration(int totalMinutes) {
    int hours = totalMinutes ~/ 60;
    int minutes = totalMinutes % 60;
    return "${hours}h ${minutes}m";
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Text(
                      movie.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                    ),

                    //genre
                    if (movie.genres.isNotEmpty)
                      Wrap(
                        spacing: 2,
                        children:
                            movie.genres.map((genre) {
                              return Chip(
                                backgroundColor: Theme.of(context).colorScheme.shadow,
                                label: Text(genre.name, style: const TextStyle(color: Colors.white)),
                              );
                            }).toList(),
                      ),

                    //year n runtime
                    Row(
                      children: [Text(DateFormat('yyyy').format(movie.releaseDate)), const SizedBox(width: 5), Text(formatDuration(movie.runtime))],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.center,
                children: [
                  //average ratings
                  CircularProgressIndicator(
                    value: movie.voteAverage / 10.0,
                    strokeWidth: 6,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      movie.voteAverage >= 7.0 ? Colors.green : (movie.voteAverage >= 5.0 ? Colors.orange : Colors.red),
                    ),
                  ),
                  Text(movie.voteAverage.toStringAsFixed(1), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
            ],
          ),

          //movie tagline n overview
          const SizedBox(height: 20),
          Text("Overview", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
          movie.tagline.isNotEmpty
              ? Column(children: [Text(movie.tagline, style: TextStyle(fontStyle: FontStyle.italic)), const SizedBox(height: 5)])
              : const SizedBox(),
          Text(movie.overview),

          //movie cast
          const SizedBox(height: 20),
          Text("Cast", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
