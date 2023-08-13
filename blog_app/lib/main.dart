import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:blog_app/model/blog.dart';
import 'package:blog_app/screen/home_screen.dart';

List<Blog>? listBlog = [];
List<Blog>? toreadlistBlog = [];

void main() {
  File blogFile =
      File('/Users/wejdant/Desktop/Project/blog_app/lib/data/blog.json');
  var stringBlog = blogFile.readAsStringSync();
  var blogData = json.decode(stringBlog);

  for (var element in blogData["blog"]) {
    listBlog?.add(Blog.fromJson(element));
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
