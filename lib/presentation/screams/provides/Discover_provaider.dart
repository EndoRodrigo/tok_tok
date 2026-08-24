import 'package:flutter/material.dart';
import 'package:tok_tok/domain/entities/VideoPost.dart';
import 'package:tok_tok/infraestructure/model/local_video_model.dart';
import 'package:tok_tok/shared/local_video_post.dart';

class DiscoverProvaider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> getDiscoverVideos() async {
    //todo: repository, data source, and use case implementation
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toEntity())
        .toList();
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
