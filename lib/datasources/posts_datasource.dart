// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class PostDatasource {
  final Dio dio;
  PostDatasource(this.dio);

  Future<dynamic> getAllPosts() async {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts");
    return response.data;
  }
}
