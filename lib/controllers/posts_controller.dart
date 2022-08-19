import 'package:flutter/cupertino.dart';
import 'package:masterclass_app/Repositories/posts_repository.dart';
import 'package:masterclass_app/models/post/post_model.dart';

class PostsController extends ChangeNotifier {
  final service = PostsRepository();
  List<PostModel> posts = [];

  getPosts() async {
    posts = await service.getAllPosts();
    notifyListeners();
  }
}
