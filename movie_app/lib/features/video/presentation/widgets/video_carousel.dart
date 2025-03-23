import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_app/core/di/injection_container.dart';
import 'package:movie_app/features/video/presentation/blocs/video_bloc.dart';
import 'package:movie_app/features/video/presentation/blocs/video_events.dart';
import 'package:movie_app/features/video/presentation/blocs/video_state.dart';

class MovieCarousel extends StatelessWidget {
  const MovieCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<VideoBloc>()..add(FetchNowPlayingTrailers()),
      child: BlocBuilder<VideoBloc, VideoState>(
        builder: (context, state) {
          if (state is VideoLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is VideoError) {
            return const Center(child: Icon(Icons.error));
          } else if (state is VideoDone) {
            return SizedBox(
              width: double.infinity,
              child: CarouselSlider(
                options: CarouselOptions(height: 200, autoPlay: true, enlargeCenterPage: false, viewportFraction: 1.0, enableInfiniteScroll: true),
                items:
                    state.videoKeys!.map((videoKey) {
                      return Container(
                        color: Colors.black,
                        alignment: Alignment.center,
                        child: Text(
                          "Trailer: $videoKey",
                          style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      );
                    }).toList(),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
