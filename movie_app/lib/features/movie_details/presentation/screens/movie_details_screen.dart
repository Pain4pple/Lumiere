import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/di/injection_container.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_bloc.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_event.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_state.dart';
import 'package:movie_app/features/movie_details/presentation/widgets/backdrop_blur.dart';
import 'package:movie_app/features/movie_details/presentation/widgets/backdrop_container.dart';
import 'package:movie_app/features/movie_details/presentation/widgets/title_container.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.movieId});

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MovieDetailsBloc>()..add(FetchMovieDetails(movieId)),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
            builder: (context, state) {
              if (state is MovieDetailsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is MovieDetailsDone) {
                final movie = state.movie;
                return Stack(
                  children: [
                    //background
                    BackdropBlur(backdropUrl: '$tmdbBackdropImageBaseURL${movie!.backdropPath}'),

                    //movie details
                    Column(
                      children: [
                        Hero(tag: movie.id, child: BackdropContainer(movie: movie)),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: TitleContainer(movie: movie)),
                      ],
                    ),
                  ],
                );
              } else if (state is MovieDetailsError) {
                return Center(child: Icon(Icons.error));
              }
              return const Center(child: Text("Select a movie"));
            },
          ),
        ),
      ),
    );
  }
}
