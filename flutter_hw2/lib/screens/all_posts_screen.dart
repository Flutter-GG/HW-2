import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/functions/custom_post_information.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';
import 'package:flutter_hw2/data/reading_from_json.dart';

class AllPostsPage extends StatefulWidget {
  const AllPostsPage({super.key});

  @override
  State<AllPostsPage> createState() => _AllPostsPage();
}

class _AllPostsPage extends State<AllPostsPage> {
  @override
  void initState() {
    postsList.clear();
    super.initState();

    for (var post in jsonData['posts']) {
      postsList.add(PostsDataModel.fromJson(post));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'Home',
        ),
        body: CustomPostList(posts: postsList));
  }
}
