import 'package:flutter/material.dart';
import 'package:hw_2/data/bloggerData.dart';
import 'package:hw_2/model/bloggerData_class.dart';
import 'package:hw_2/pages/home_page.dart';

// visBookmark
List<Posts> listPosts = [];
List<Posts> listBookmark = [];

void main() {
  for (var element in bloggerData["posts"]) {
    listPosts.add(Posts.fromJson(element));
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
