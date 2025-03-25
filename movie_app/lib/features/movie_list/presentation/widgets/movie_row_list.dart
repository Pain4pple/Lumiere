import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_bloc.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_state.dart';
import 'package:movie_app/features/movie_list/presentation/widgets/movie_card.dart';

class MovieRowList extends StatelessWidget {
  const MovieRowList({super.key, required this.movieCategory});
  final String movieCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0), child: Row(children: [Text(movieCategory), const Spacer()])),
        SizedBox(
          height: 250,
          child: BlocBuilder<MovieListsBloc, MovieListState>(
            builder: (context, state) {
              if (state is MovieListLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is MovieListDone) {
                final movies = state.movieCategories[movieCategory] ?? [];
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies!.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];
                    return Padding(padding: const EdgeInsets.all(8.0), child: MovieCard(movie: movie));
                  },
                );
              } else if (state is MovieListError) {
                return Center(child: Text("Failed to load movies"));
              }
              return SizedBox();
            },
          ),
        ),
      ],
    );
  }
}
