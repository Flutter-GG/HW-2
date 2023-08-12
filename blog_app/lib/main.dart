import 'package:blog_app/models/post_model.dart';
import 'package:blog_app/raw_data/posts_json.dart';
import 'package:blog_app/views/posts_view.dart';
import 'package:flutter/material.dart';

void main() {

  for (var postJson in postsJson) {
     posts.add(PostModel.fromJson(postJson));  
  }
  
  runApp(const MainApp());
}
List posts = [];

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PostsView()
    );
  }
}
