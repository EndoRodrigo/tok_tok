import 'package:flutter/material.dart';
import 'package:tok_tok/domain/entities/VideoPost.dart';

class DiscoverProvaider extends ChangeNotifier {
  bool initialLoading = true;
  List<Videopost> videos = [];

  Future<void> getDiscoverVideos() async {
    initialLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 2));
   
    initialLoading = false;
    notifyListeners();
  }
}
