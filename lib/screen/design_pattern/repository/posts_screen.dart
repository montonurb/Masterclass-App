import 'package:flutter/material.dart';
import 'package:masterclass_app/controllers/posts_controller.dart';
import 'package:masterclass_app/main.dart';
import 'package:masterclass_app/models/post/post_model.dart';
import 'package:masterclass_app/screen/widgets/header_widget.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => PostsScreenState();
}

class PostsScreenState extends State<PostsScreen> {
  final service = injection.get<PostsController>();

  @override
  void initState() {
    service.getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.scaffoldBackground,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderWidget(title: "Posts", logo: false),
                const SizedBox(height: 16),
                AnimatedBuilder(
                    animation: service,
                    builder: (context, child) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: ListView.separated(
                          itemCount: service.posts.length,
                          itemBuilder: (context, index) {
                            PostModel post = service.posts[index];
                            return ListTile(
                              leading: Text(
                                post.id.toString(),
                                style: AppTheme.textStyle.healine1,
                              ),
                              title: Text(
                                post.title,
                                style: AppTheme.textStyle.description,
                              ),
                              subtitle: Text(
                                post.body,
                                style: AppTheme.textStyle.bodyText,
                              ),
                            );
                          },
                          separatorBuilder: (_, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Divider(
                                color: AppTheme.colors.primary,
                              ),
                            );
                          },
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
