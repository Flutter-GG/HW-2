import 'package:blog_app/cards/post_card.dart';
import 'package:blog_app/extensions/measurements.dart';
import 'package:blog_app/main.dart';
import 'package:flutter/material.dart';

class BookmarkView extends StatefulWidget {
  const BookmarkView({super.key});

  @override
  State<BookmarkView> createState() => _BookmarkViewState();
}

class _BookmarkViewState extends State<BookmarkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: context.getWidth(),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onDoubleTap: () {
                  savedPosts.removeAt(index);
                  setState(() {});
                },
                child: PostCard(
                  post: savedPosts[index],
                ),
              );
            },
            itemCount: savedPosts.length,
          ),
        ),
      ),
    );
  }
}
