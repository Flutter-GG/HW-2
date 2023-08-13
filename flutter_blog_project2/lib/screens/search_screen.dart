import 'package:flutter/material.dart';
import 'package:flutter_blog_project2/components/appbar_widget.dart';
import 'package:flutter_blog_project2/components/post_card.dart';
import 'package:flutter_blog_project2/data_related_files/data_model.dart';
import 'package:flutter_blog_project2/main.dart';
import 'package:flutter_blog_project2/screens/reading_list.dart';

List tempPosts = [];

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
    tempPosts = blogList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Search'),
      body: SafeArea(
        child: ListView(
          children: [
            TextField(
              onChanged: (text) => searchBar(text),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return PostCard(
                iconFunction: (){ 
                readPostList.add(blogList[index]);
                },
              buttonIcon:Icons.add,
                  post: tempPosts[index],
                );
              },
              itemCount: tempPosts.length,
            ),
          ],
        ),
      ),
    );
  }
 searchBar(String searchText) {
  searchText = searchText.toLowerCase();
  if (searchText.isEmpty) {
    setState(() {
      tempPosts = blogList;
    });
  } else {
    List<BlogModel> filteredPosts = [];
    for (final element in blogList) {
      if (element.title.toLowerCase().contains(searchText)) {
        filteredPosts.add(element);
      }
    }
    setState(() {
      tempPosts = filteredPosts;
    });
  }
}
}
