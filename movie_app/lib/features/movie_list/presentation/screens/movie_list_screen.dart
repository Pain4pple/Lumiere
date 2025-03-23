import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/di/injection_container.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_bloc.dart';
import 'package:movie_app/features/movie_list/presentation/blocs/movie_lists_event.dart';
import 'package:movie_app/features/movie_list/presentation/widgets/movie_row_list.dart';
import 'package:movie_app/features/video/presentation/widgets/video_carousel.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // HighlightedMovie(imagePosterUrl: "", imageLogoUrl: "", videoUrl: "", description: ""),
              // BlocProvider(create: (context) => sl<VideoBloc>()..add(FetchNowPlayingTrailers()), child: VideoCarousel()),
              // BlocBuilder<VideoBloc, VideoState>(
              //   builder: (context, state) {
              //     if (state is VideoLoading) {
              //       return const Center(child: CircularProgressIndicator());
              //     } else if (state is VideoError) {
              //       return Center(child: Icon(Icons.error));
              //     } else if (state is VideoDone) {

              //     }
              //     return SizedBox();
              //   },
              // ),
              MovieCarousel(),
              const SizedBox(height: 10),
              BlocProvider(
                create: (context) => sl<MovieListsBloc>()..add(FetchNowPlayingMovies()),
                child: SizedBox(height: 300, child: MovieRowList(movieCategory: "Now Playing")),
              ),
              BlocProvider(
                create: (context) => sl<MovieListsBloc>()..add(FetchOscarWinningMovies()),
                child: SizedBox(height: 300, child: MovieRowList(movieCategory: "Best Picture - The Academy Awards")),
              ),
              BlocProvider(
                create: (context) => sl<MovieListsBloc>()..add(FetchTopRatedMovies()),
                child: SizedBox(height: 300, child: MovieRowList(movieCategory: "Top Rated")),
              ),
              BlocProvider(
                create: (context) => sl<MovieListsBloc>()..add(FetchFilipinoMovies()),
                child: SizedBox(height: 300, child: MovieRowList(movieCategory: "Filipino Movies")),
              ),
              BlocProvider(
                create: (context) => sl<MovieListsBloc>()..add(FetchClassicMovies()),
                child: SizedBox(height: 300, child: MovieRowList(movieCategory: "Classics")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
