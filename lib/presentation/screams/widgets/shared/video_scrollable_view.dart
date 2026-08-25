import 'package:flutter/material.dart';
import 'package:tok_tok/domain/entities/VideoPost.dart';
import 'package:tok_tok/shared/video_button.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];

        return Stack(
          children: [
            VideoButton(videoPost: video),
          ],
        );
      },
    );
  }
}
