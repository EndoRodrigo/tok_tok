import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tok/presentation/screams/provides/Discover_provaider.dart';
import 'package:tok_tok/presentation/screams/widgets/shared/video_scrollable_view.dart';

class DiscoverScream extends StatelessWidget {
  const DiscoverScream({super.key});

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : VideoScrollableView(videos: discoverProvider.videos )
    );
  }
}