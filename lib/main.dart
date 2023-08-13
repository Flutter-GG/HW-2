import 'package:blog_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'data_model/data_model.dart';
import 'dataset/dataset.dart';

//Declearing List of blogs
List<Blogs> listOfBlogs = [];
List<Blogs> readingList = [];
List<Blogs> newBlogList = [];

void main() {
  for (var element in blogDataset) {
    listOfBlogs.add(Blogs.fromJson(element));
  }

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
        notifyParent: () => refresh(),
      ),
    );
  }
}


/**
 * Blogs resource:
 * https://www.pluralsight.com/blog/technology
 */
