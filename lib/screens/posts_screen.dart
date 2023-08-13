import 'package:flutter/material.dart';
import 'package:hw2/components/general_components/card_widget.dart';
import 'package:hw2/constants/app_styles.dart';
import 'package:hw2/constants/constants.dart';
import 'package:hw2/data/global_data.dart';
import 'package:hw2/data/post_model.dart';
import 'package:hw2/data/postsData.dart';
import 'package:hw2/extensions/navigator.dart';
import 'package:hw2/screens/add_post_screen.dart';



class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => PostsScreenState();
}

class PostsScreenState extends State<PostsScreen> {
  @override
  void initState() {
    super.initState();
    for (var element in postsData["posts"]) {
      listPosts.add(Post.fromJson(element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Posts page"),
        actions: [
          IconButton(
              onPressed: () async {
                await context.getNavigator(const AddPostScreen());
              },
              icon: const Icon(Icons.add_box_outlined)),
          width8,
        ],
      ),
      body: ListView.builder(
          itemCount: listPosts.length,
          itemBuilder: (BuildContext, index) {
            return CardWidget(
              post: listPosts[index],
              index: index,
            );
          }),
    );
  }
}
