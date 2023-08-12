import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_app_bar_widget.dart';
import 'package:flutter_hw2/functions/custom_post_information.dart';
import 'package:flutter_hw2/data/data_model.dart';
import 'package:flutter_hw2/data/global_variables.dart';
import 'package:flutter_hw2/data/reading_from_json.dart';

/* this is  for reading posts page, aka bookmarks */

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
      bookmarkedPostsList.add(PostsDataModel.fromJson(post));
    }
    bookmarkedPostsList =
        bookmarkedPostsList.where((post) => post.isBookedmark == true).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'Reading List',
        ),
        body: CustomPostList(posts: bookmarkedPostsList));
  }
}
