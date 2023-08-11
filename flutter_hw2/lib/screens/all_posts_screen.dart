import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_container_widget.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';
import 'package:flutter_hw2/data/reading_from_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    for (var post in jsonData['posts']) {
      postsList.add(PostsDataModel.fromJson(post));
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListView.builder(
          itemCount: postsList.length,
          itemBuilder: (context, index) {
            var post = postsList[index];
            return CustomPostContainerWidget(
              profileName: post.userName,
              title: post.title,
              reactions: post.reactions,
              profileImage: post.profileImage,
              postImage: post.postImage,
              date: post.date,
            );
          }),
    );
  }
}
