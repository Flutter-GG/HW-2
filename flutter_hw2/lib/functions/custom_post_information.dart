import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_container_widget.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';
import 'package:flutter_hw2/screens/single_post_screen.dart';

class CustomPostList extends StatefulWidget {
  final List<PostsDataModel> posts;

  const CustomPostList({Key? key, required this.posts}) : super(key: key);

  @override
  State<CustomPostList> createState() => _CustomPostListState();
}

class _CustomPostListState extends State<CustomPostList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.posts.length,
      itemBuilder: (context, index) {
        var post = widget.posts[index];
        return GestureDetector(
          onTap: () {
            _navigateToSinglePost(context, post);
          },
          child: CustomPostContainerWidget(
            userId: post.usedId,
            isBookedMark: post.isBookedmark ?? false,
            profileName: post.userName,
            title: post.title,
            reactions: post.reactions,
            profileImage: post.profileImage,
            postImage: post.postImage,
            date: post.date,
            readTime: post.readingTime,
            onPressedBookmark: () {
              _isBookedmark(post);
            },
            onPressedOptions: () {},
            onPressedRemove: () {},
          ),
        );
      },
    );
  }

  void _isBookedmark(PostsDataModel post) {
    setState(() {
      post.toggleBookmark();
      if (post.isBookedmark!) {
        readingList.add(post);
      } else {
        readingList.remove(post);
      }
    });
  }

  void _navigateToSinglePost(BuildContext context, PostsDataModel post) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SinglePostPage(post: post),
      ),
    );
  }
}
