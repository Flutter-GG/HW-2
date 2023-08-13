import 'package:blog_app/cards/post_card.dart';
import 'package:blog_app/extensions/navigation.dart';
import 'package:blog_app/main.dart';
import 'package:blog_app/models/post_model.dart';
import 'package:blog_app/views/new_post_view.dart';
import 'package:blog_app/views/post_view.dart';
import 'package:flutter/material.dart';

List tempPosts = [];

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  void initState() {
    super.initState();
    tempPosts = posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            TextField(
              onChanged: (text) => searchBar(text),
              decoration: const InputDecoration(prefixIcon: Icon(Icons.search)),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    context.navigateTo(PostView(post: posts[index]));
                  },
                  onLongPress: () {
                    savedPosts.add(tempPosts[index]);
                  },
                  child: PostCard(
                    post: tempPosts[index],
                  ),
                );
              },
              itemCount: tempPosts.length,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewPostView(),
            ),
          ).then(
            (value) => {
              if (value == "newPost") {setState(() {})}
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  searchBar(String searchText) {
    searchText = searchText.toLowerCase();
    if (searchText.isEmpty) {
      setState(() {
        tempPosts = posts;
      });
    } else {
      List<PostModel> filteredPosts = [];
      for (final post in posts) {
        if (post.title.toLowerCase().contains(searchText)) {
          filteredPosts.add(post);
        }
      }
      setState(() {
        tempPosts = filteredPosts;
      });
    }
  }
}
