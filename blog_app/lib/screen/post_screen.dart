import 'package:blog_app/model/blog.dart';
import 'package:blog_app/screen/updatepost_screen.dart';
import 'package:blog_app/utilities/ui_classes/appcolor.dart';
import 'package:blog_app/widget/post_widget.dart';

import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key, required this.blog});

  final Blog blog;
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        foregroundColor: const Color(0xff424242),
        title: const Text(
          "Post",
          style: TextStyle(
            color: Color(0xff424242),
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UpdatePostScreen(blog: widget.blog)))
                    .then((value) => {
                          if (value == "i'm here") {setState(() {})}
                        });
              },
              icon: const Icon(
                Icons.edit_outlined,
                color: Color(0xff424242),
              ))
        ],
      ),
      body: SafeArea(
          child: PostWidget(
        blog: widget.blog,
      )),
    );
  }
}
