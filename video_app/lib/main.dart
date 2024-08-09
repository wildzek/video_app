import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_app/config/theme/app_theme.dart';
import 'package:video_app/infrastructure/datasource/local_video_datasource_impl.dart';
import 'package:video_app/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:video_app/presentation/screens/discover/discover_screen.dart';
import 'package:video_app/presentation/screens/discover/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostsRepositoryImpl(videosDatasource: LocalVideoDatasource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => DiscoverProvider(videosRepository: videoPostRepository)..loadNextPage()),
      ],
      child: MaterialApp(
          title: 'Video App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
