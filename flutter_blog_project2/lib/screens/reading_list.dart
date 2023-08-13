import 'package:flutter/material.dart';
import 'package:flutter_blog_project2/components/appbar_widget.dart';
import 'package:flutter_blog_project2/components/bottom_nav.dart';
import 'package:flutter_blog_project2/components/post_card.dart';
import 'package:flutter_blog_project2/data_related_files/data_model.dart';

List<BlogModel> readPostList = [];

class ReadingList extends StatefulWidget {
  const ReadingList({super.key});

  @override
  State<ReadingList> createState() => _ReadingListState();
}

class _ReadingListState extends State<ReadingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Reading List'),
      body: ListView.builder(
          itemCount: readPostList.length,
          itemBuilder: (BuildContext context, int index) {
            return PostCard(
              iconFunction: () {
                readPostList.removeAt(index);
                setState(() {});
              },
              buttonIcon: Icons.delete,
              post: readPostList[index],
            );
          }),
      bottomNavigationBar: BottomNavBar(index: 2),
    );
  }
}
