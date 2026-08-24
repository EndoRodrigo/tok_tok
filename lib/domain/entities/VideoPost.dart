class Videopost {
  final String caption;
  final String videoUrl;
  final int likes;
  final int views;

  Videopost({
    required this.caption,
    required this.videoUrl,
     this.likes = 0,
     this.views = 0,
  });
}
