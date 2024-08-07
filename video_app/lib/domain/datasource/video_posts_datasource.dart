

abstract class VideoPostDatasource {
    Future<List<VideoPost>> getTrendingVideosByPage(int page);

    Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
}