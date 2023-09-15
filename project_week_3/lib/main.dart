import 'package:flutter/material.dart';
import 'package:project_week_3/data/blogData.dart';
import 'package:project_week_3/models/blogModel.dart';
import 'package:project_week_3/pages/homePage.dart';

List<BlogModel>? ListBlogs = [];
void main() {
  for (var element in BlogData["posts"]) {
    ListBlogs?.add(BlogModel.fromJson(element));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
