import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_app/config/theme/app_theme.dart';
import 'package:video_app/presentation/screens/discover/discover_screen.dart';
import 'package:video_app/presentation/screens/discover/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiscoverProvider()),
      ],
      child: MaterialApp(
        title: 'Video App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}