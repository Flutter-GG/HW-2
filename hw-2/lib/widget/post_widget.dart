import 'package:flutter/material.dart';
import 'package:hw_2/main.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/widget/post_card_widget.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    super.key,
  });

  @override
  State<PostWidget> createState() => PostWidgetState();
}

class PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primeryColor,
      body: ListView.builder(
        itemCount: listPosts.length,
        itemBuilder: (context, index) {
          return PostCardWidget(
            listPosts: listPosts[index],
            myFunction: () {
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
