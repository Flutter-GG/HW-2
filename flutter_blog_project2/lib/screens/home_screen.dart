import 'package:flutter/material.dart';
import 'package:flutter_blog_project2/components/appbar_widget.dart';
import 'package:flutter_blog_project2/components/bottom_nav.dart';
import 'package:flutter_blog_project2/components/post_card.dart';
import 'package:flutter_blog_project2/constants/colors.dart';
import 'package:flutter_blog_project2/main.dart';
import 'package:flutter_blog_project2/screens/reading_list.dart';
import 'package:flutter_blog_project2/screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Home'),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.secondry,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ));
          },
          child: const Icon(Icons.search)),
      body: ListView.builder(
          itemCount: blogList.length,
          itemBuilder: (BuildContext context, int index) {
            return PostCard(
              iconFunction: () {
                readPostList.add(blogList[index]);
              },
              buttonIcon: Icons.add,
              post: blogList[index],
            );
          }),
      bottomNavigationBar: BottomNavBar(index: 0),
    );
  }
}
