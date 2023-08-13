import 'package:blog_app/models/post_model.dart';
import 'package:blog_app/raw_data/posts_json.dart';
import 'package:blog_app/views/user_related/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  for (var postJson in postsJson) {
    posts.add(PostModel.fromJson(postJson));
  }

  runApp(const MainApp());
}

List posts = [];
List savedPosts = [];
int userId = 1001; //default user id
List userPosts = [];

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginView());
  }
}
