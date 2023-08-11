import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_container_widget.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';
import 'package:flutter_hw2/data/reading_from_json.dart';
import 'package:flutter_hw2/screens/single_post_screen.dart';

class ReadingListPage extends StatefulWidget {
  const ReadingListPage({super.key});

  @override
  State<ReadingListPage> createState() => _ReadingListPageState();
}

class _ReadingListPageState extends State<ReadingListPage> {
  @override
  void initState() {
    super.initState();

    for (var post in jsonData['posts']) {
      readingList.add(PostsDataModel.fromJson(post));
    }
    bookmarkedPosts =
        readingList.where((post) => post.isBookedmark == true).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookmarkedPosts.length,
      itemBuilder: (context, index) {
        var post = bookmarkedPosts[index];
        return GestureDetector(
          onTap: () {
            _navigateToSinglePost(context, post);
          },
          child: CustomPostContainerWidget(
            isBookedMark: post.isBookedmark ?? false,
            profileName: post.userName,
            title: post.title,
            reactions: post.reactions,
            profileImage: post.profileImage,
            postImage: post.postImage,
            date: post.date,
            onPressedBookmark: () {
              setState(() {
                post.toggleReadInList();
                bookmarkedPosts.remove(post);
              });
            },
            onPressedOptions: () {},
            onPressedRemove: () {},
          ),
        );
      },
    );
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
