import 'package:dio/dio.dart';
import 'package:tap/models/popular_model.dart';

class ApiPopular {
  final dio = Dio();
  Future<List<PopularModel>> getAllPopular() async {
    const URL =
        "https://api.themoviedb.org/3/movie/popular?api_key=5019e68de7bc112f4e4337a500b96c56&language=es-MX&page=1";
    final response = await dio.get(URL);
    final res = response.data['results'] as List;
    return res.map((movie) => PopularModel.fromMap(movie)).toList();
  }

  Future<String?> getTrailer(int movieId) async {
    final url =
        "https://api.themoviedb.org/3/movie/$movieId/videos?api_key=5019e68de7bc112f4e4337a500b96c56&language=es-MX";
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final results = response.data['results'] as List;
      if (results.isNotEmpty) {
        final video = results[0];
        if (video['site'] == 'YouTube') {
          return "https://www.youtube.com/watch?v=${video['key']}";
        }
      }
    }
    return null;
  }

  Future<List<Map<String, dynamic>>> getActors(int movieId) async {
    final url =
        "https://api.themoviedb.org/3/movie/$movieId/credits?api_key=5019e68de7bc112f4e4337a500b96c56&language=es-MX";
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final results = response.data['cast'] as List;
      final filteredActors = results.where((actor) {
        return actor['original_name'] != null && actor['character'] != null;
      }).toList();

      return filteredActors
          .map((actor) => {
                "name": actor['original_name'],
                "character": actor['character'],
                "profilePath": actor['profile_path'],
              })
          .toList();
    }

    return [];
  }
}
