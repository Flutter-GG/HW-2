import 'package:flutter/material.dart';
import 'package:flutter_blog_project/components/appbar_widget.dart';
import 'package:flutter_blog_project/components/post_card.dart';
import 'package:flutter_blog_project/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Home'),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.search)),
      body: ListView.builder(
          itemCount: blogList.length,
          itemBuilder: (BuildContext context, int index) {
            return PostCard(
              post: blogList[index],
            );
          }),
    );
  }
}
