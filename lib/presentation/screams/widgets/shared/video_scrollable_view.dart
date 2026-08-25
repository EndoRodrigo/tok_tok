import 'package:flutter/material.dart';
import 'package:tok_tok/domain/entities/VideoPost.dart';
import 'package:tok_tok/presentation/screams/widgets/shared/video/video_player_screen.dart';
import 'package:tok_tok/shared/video_button.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics:  BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];

        return Stack(
          children: [
            // video player + gradiente
            SizedBox.expand(
              child: VideoPlayerScreen(
                videoUrl: video.videoUrl,
                caption: video.caption,
              ),
            ),


            //Bottom buttons
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButton(videoPost: video),
            ),
          ],
        );
      },
    );
  }
}
