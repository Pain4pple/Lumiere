import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_app/core/di/injection_container.dart';
import 'package:movie_app/features/movie_details/presentation/screens/movie_details_screen.dart';
import 'package:movie_app/features/video/presentation/blocs/video_bloc.dart';
import 'package:movie_app/features/video/presentation/blocs/video_events.dart';
import 'package:movie_app/features/video/presentation/blocs/video_state.dart';
import 'package:movie_app/features/video/presentation/widgets/movie_details_overlay.dart';
import 'package:movie_app/features/video/presentation/widgets/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({super.key});

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  int _currentIndex = 0;
  YoutubePlayerController? _currentController;
  late CarouselSliderController _carouselController;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselSliderController();
  }

  void _moveToNext() {
    if (_currentIndex < 6) {
      _carouselController.nextPage();
    } else {
      _currentIndex = 0;
    }
  }

  void _onSlideChange(int index, List<dynamic> movies) {
    if (_currentController != null) {
      _currentController!.pause();
    }

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<VideoBloc>()..add(FetchNowPlayingTrailers()),
      child: BlocBuilder<VideoBloc, VideoState>(
        builder: (context, state) {
          if (state is VideoLoading) {
            return const SizedBox(height: 300, child: Center(child: CircularProgressIndicator()));
          } else if (state is VideoError) {
            return const Center(child: Icon(Icons.error));
          } else if (state is VideoDone) {
            final movies = state.moviesWithTrailers!;
            return SizedBox(
              width: double.infinity,
              child: CarouselSlider.builder(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 300,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: true,
                  onPageChanged: (index, reason) => _onSlideChange(index, movies),
                ),
                itemCount: movies.length,
                itemBuilder: (context, index, realIndex) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailsScreen(movieId: movies[index].id)));
                    },
                    child: Container(
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          VideoPlayer(trailerKey: movies[index].videoKey!, onVideoEnd: _moveToNext),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [const Color.fromARGB(0, 0, 0, 0), Theme.of(context).scaffoldBackgroundColor],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          Positioned(bottom: 10, left: 10, child: MovieDetailsOverlay(movie: movies[index])),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
