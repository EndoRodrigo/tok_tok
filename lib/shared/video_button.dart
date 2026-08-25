import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tok_tok/config/helpers/human_format.dart';
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
        const SizedBox(height: 10,),
        _CustomerIconButton(
          value: videoPost.views,
          icon: Icons.visibility,
          color: Colors.blue,
        ),
        const SizedBox(height: 10,),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: _CustomerIconButton(
            value: 0,
            icon: Icons.play_circle_outline,
            color: const Color.fromARGB(255, 243, 33, 243),
          ),
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
          
        }, icon: Icon(icon, color: color, size: 30,)),
        if(value > 0)
          Text(HumanFormat.humanaRableNumber(value.toDouble())),
      ],
    );
  }
}
