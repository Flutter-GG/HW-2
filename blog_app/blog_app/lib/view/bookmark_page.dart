import 'package:blog_app/main.dart';
import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/widgets/blog_card.dart';
import 'package:flutter/material.dart';

import '../functions/appbar_function.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => BookmarkState();
}

class BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarFun(
        title: 'Bookmark',
      ),
      backgroundColor: ColorsApp.primaryColor,
      body: ListView.builder(
        itemCount: bookmarkList.length,
        itemBuilder: (itemBuilder, index) {
          return BlogCard(blog: bookmarkList[index]);
        },
      ),
    );
  }
}
