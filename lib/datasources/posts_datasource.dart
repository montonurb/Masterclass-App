import 'package:dio/dio.dart';
import 'package:masterclass_app/models/post/post_model.dart';

class PostDatasource {
  final dio = Dio();

  Future<dynamic> getAllPosts() async {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts");
    return response.data;
  }
}
