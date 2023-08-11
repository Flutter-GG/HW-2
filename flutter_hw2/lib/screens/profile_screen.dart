import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/functions/custom_post_information.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';

class ProfilePosts extends StatefulWidget {
  final int usedId;

  const ProfilePosts({Key? key, this.usedId = 2}) : super(key: key);

  @override
  State<ProfilePosts> createState() => _ProfilePostsState();
}

class _ProfilePostsState extends State<ProfilePosts> {
  late List<PostsDataModel> userPosts;

  @override
  void initState() {
    super.initState();

    userPosts =
        postsList.where((post) => post.usedId == widget.usedId).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profile',
      ),
      body: CustomPostList(posts: userPosts),
    );
  }
}
