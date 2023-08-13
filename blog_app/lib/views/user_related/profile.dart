import 'package:blog_app/cards/post_card.dart';
import 'package:blog_app/main.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    userPosts.clear();
    for (var post in posts) {
      if (post.userId == userId) {
        userPosts.add(post);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("User Id: $userId"),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return PostCard(post: userPosts[index]);
          },
          itemCount: userPosts.length,
        ),
      ),
    );
  }
}
