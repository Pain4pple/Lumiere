import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  final String trailerKey;
  final VoidCallback onVideoEnd;

  const VideoPlayer({super.key, required this.trailerKey, required this.onVideoEnd});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;
  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.trailerKey,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: false,
        controlsVisibleAtStart: false,
        hideControls: true,
        disableDragSeek: true,
        enableCaption: false,
      ),
    )..addListener(_videoListener);
  }

  void _videoListener() {
    if (!_isDisposed && _controller.value.playerState == PlayerState.ended) {
      widget.onVideoEnd();
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    _controller.removeListener(_videoListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.trailerKey),
      onVisibilityChanged: (info) {
        if (_isDisposed) return;
        if (info.visibleFraction < 0.5 && _controller.value.isPlaying) {
          _controller.pause();
        } else if (info.visibleFraction == 1.0 && !_controller.value.isPlaying) {
          _controller.play();
        }
      },
      child: YoutubePlayer(controller: _controller, showVideoProgressIndicator: true),
    );
  }
}
