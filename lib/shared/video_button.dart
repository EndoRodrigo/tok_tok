import 'package:flutter/material.dart';
import 'package:tok_tok/domain/entities/VideoPost.dart';

class VideoButton extends StatelessWidget {
  final VideoPost videoPost;
  const VideoButton({super.key, required this.videoPost});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomerIconButton(
          value: videoPost.likes,
          icon: Icons.favorite,
          color: Colors.red,
        ),
      ],
    );
  }
}

class _CustomerIconButton extends StatelessWidget {
  final int value;
  final IconData icon;
  final Color color;
  
  const _CustomerIconButton({required this.value, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {
          
        }, icon: Icon(icon, color: color,)),
        Text(value.toString()),
      ],
    );
  }
}
