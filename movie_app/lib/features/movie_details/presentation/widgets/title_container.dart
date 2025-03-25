import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_bloc.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_state.dart';
import 'package:movie_app/features/movie_details/presentation/widgets/cast_list.dart';
import 'package:movie_app/features/movie_details/presentation/widgets/crew_list.dart';
import 'package:movie_app/features/movie_details/presentation/widgets/ratings.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key});

  String formatDuration(int totalMinutes) {
    if (!(totalMinutes <= 0)) {
      int hours = totalMinutes ~/ 60;
      int minutes = totalMinutes % 60;
      return "${hours}h ${minutes}m";
    } else {
      return "-- : --";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
        builder: (context, state) {
          final movie = state.movie!;
          final movieCredits = state.cast!;
          final movieCrew = state.crew!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          children: [
                            Text(DateFormat('yyyy').format(movie.releaseDate)),
                            const SizedBox(width: 5),
                            Text(formatDuration(movie.runtime)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),

                  //ratings
                  Ratings(),
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
              //extra logic: when no cast is available, return crew
              const SizedBox(height: 20),
              movieCredits.isNotEmpty
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cast", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: movieCredits.length,
                          itemBuilder: (context, index) {
                            return CastTile(cast: movieCredits[index]);
                          },
                        ),
                      ),
                    ],
                  )
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Crew", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: movieCrew.length,
                          itemBuilder: (context, index) {
                            return CrewTile(cast: movieCrew[index]);
                          },
                        ),
                      ),
                    ],
                  ),
            ],
          );
        },
      ),
    );
  }
}
