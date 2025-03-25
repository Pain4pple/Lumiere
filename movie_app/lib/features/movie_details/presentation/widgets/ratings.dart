import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_bloc.dart';
import 'package:movie_app/features/movie_details/presentation/blocs/movie_details_state.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        final movie = state.movie!;
        return Stack(
          alignment: Alignment.center,
          children: [
            //average ratings
            CircularProgressIndicator(
              value: movie.voteAverage != 0 ? movie.voteAverage / 10.0 : 0,
              strokeWidth: 6,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(
                movie.voteAverage >= 7.0 ? Colors.green : (movie.voteAverage >= 5.0 ? Colors.orange : Colors.red),
              ),
            ),
            Text(movie.voteAverage.toStringAsFixed(1), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        );
      },
    );
  }
}
