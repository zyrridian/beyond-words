import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ZVideoPlayer extends StatefulWidget {
  const ZVideoPlayer({super.key});

  @override
  State<ZVideoPlayer> createState() => _ZVideoPlayerState();
}

class _ZVideoPlayerState extends State<ZVideoPlayer> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();

    /// From Network
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
            "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")));

    /// From Asset
    // flickManager = FlickManager(videoPlayerController: VideoPlayerController.asset("assets/videos/bee.mp4"));
  }

  /// Optional but Recommended
  @override
  void dispose() {
    super.dispose();
    flickManager.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16/9,
      child: FlickVideoPlayer(
        flickManager: flickManager,
      ),
    );
  }
}
