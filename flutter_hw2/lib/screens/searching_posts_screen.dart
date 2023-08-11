import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/functions/custom_post_information.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';

class SearchPostsPage extends StatefulWidget {
  const SearchPostsPage({super.key});

  @override
  State<SearchPostsPage> createState() => _SearchPostsPageState();
}

class _SearchPostsPageState extends State<SearchPostsPage> {
  List<PostsDataModel> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Search',
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) {
              setState(() {
                searchResults.clear();
              });

              for (var post in postsList) {
                if (post.title?.toLowerCase().contains(value.toLowerCase()) ==
                    true) {
                  setState(() {
                    searchResults.add(post);
                  });
                }
              }
            },
          ),
          Expanded(
            child: CustomPostList(posts: searchResults),
          ),
        ],
      ),
    );
  }
}
