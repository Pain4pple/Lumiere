import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/di/injection_container.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_bloc.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_event.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_state.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.movieId});

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MovieDetailsBloc>()..add(FetchMovieDetails(movieId)),
      child: Scaffold(
        body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            if (state is MovieDetailsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is MovieDetailsDone) {
              final movie = state.movie;
              return Column(
                children: [
                  Image.network("https://image.tmdb.org/t/p/w500${movie!.posterPath}"),
                  Text(movie.title, style: const TextStyle(fontSize: 24)),
                  Text(movie.overview),
                ],
              );
            } else if (state is MovieDetailsError) {
              return Center(child: Icon(Icons.error));
            }
            return const Center(child: Text("Select a movie"));
          },
        ),
      ),
    );
  }
}
