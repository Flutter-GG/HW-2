import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/functions/custom_post_information.dart';
import 'package:flutter_hw2/data/global_variables.dart';

/* this is for searching in the postsList */
class SearchPostsPage extends StatefulWidget {
  const SearchPostsPage({super.key});

  @override
  State<SearchPostsPage> createState() => _SearchPostsPageState();
}

class _SearchPostsPageState extends State<SearchPostsPage> {
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
                searchList.clear();
              });

              for (var post in postsList) {
                if (post.title?.toLowerCase().contains(value.toLowerCase()) ==
                    true) {
                  setState(() {
                    searchList.add(post);
                  });
                }
              }
            },
          ),
          Expanded(
            child: CustomPostList(posts: searchList),
          ),
        ],
      ),
    );
  }
}
