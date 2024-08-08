import 'package:video_app/domain/datasource/video_posts_datasource.dart';
import 'package:video_app/domain/entities/video_post.dart';
import 'package:video_app/domain/repositories/video_posts_repository.dart';

class VideoPostsRepository implements VideoPostRepository {
  final VideoPostDatasource videosDatasource;

  VideoPostsRepository({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
