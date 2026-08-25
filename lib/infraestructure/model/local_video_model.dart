import 'package:tok_tok/domain/entities/VideoPost.dart';

class LocalVideoModel {
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.caption,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
      caption: json['name'],
      videoUrl: json['videoUrl'] ,
      likes: json['likes'] ?? 0,
      views: json['views'] ?? 0,
    );
  }

  VideoPost toEntity() {
    return VideoPost(
      caption: caption,
      videoUrl: videoUrl,
      likes: likes,
      views: views,
    );
  }
}