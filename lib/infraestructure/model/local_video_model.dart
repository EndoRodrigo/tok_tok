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
      caption: json['caption'] as String,
      videoUrl: json['videoUrl'] as String,
      likes: json['likes'] as int? ?? 0,
      views: json['views'] as int? ?? 0,
    );
  }

  toJson() {
    return {
      'caption': caption,
      'videoUrl': videoUrl,
      'likes': likes,
      'views': views,
    };
  }
}