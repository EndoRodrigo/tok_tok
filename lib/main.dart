import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tok/config/app_theme.dart';
import 'package:tok_tok/presentation/screams/discover/discover_scream.dart';
import 'package:tok_tok/presentation/screams/provides/Discover_provaider.dart';
import 'package:tok_tok/presentation/screams/widgets/shared/video_scrollable_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (context) => DiscoverProvider()..getDiscoverVideos(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(),
        home: DiscoverScream(),
      ),
    );
  }
}
