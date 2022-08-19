import 'package:masterclass_app/controllers/posts_controller.dart';
import 'package:masterclass_app/models/post/post_model.dart';

class PostsRepository implements IPostsRepository {
  final PostsRepository _datasource;

  PostsRepository(this._datasource);

  @override
  Future<List<PostModel>> getAllPosts() async {
    try {
      List list = await _datasource.getAllPosts();
      final posts = list
          .map((e) => PostModel(
              userId: e["userId"],
              id: e['id'],
              title: e["title"],
              body: e["body"]))
          .toList();
      return posts;
    } catch (e) {
      List<PostModel> posts = [];
      return posts;
    }
  }
}
