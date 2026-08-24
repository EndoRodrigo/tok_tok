import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tok/config/app_theme.dart';
import 'package:tok_tok/presentation/discover/screams/discover_scream.dart';
import 'package:tok_tok/presentation/discover/screams/provides/Discover_provaider.dart';

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
        ChangeNotifierProvider(create: (context) => DiscoverProvaider()),
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

