import 'package:flutter/material.dart';
import 'package:hw_2/main.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/widget/post_card_widget.dart';

class ReadingListPage extends StatefulWidget {
  const ReadingListPage({super.key, this.myFunction});

  final Function()? myFunction;

  @override
  State<ReadingListPage> createState() => _ReadingListPageState();
}

class _ReadingListPageState extends State<ReadingListPage> {
  Widget build(BuildContext context) {
    listBookmark =
        listBookmark.where((element) => element.isBookmark == true).toList();
    print(listBookmark);
    return Scaffold(
      backgroundColor: ColorsApp.primeryColor,
      body: ListView.builder(
          itemCount: listBookmark.length,
          itemBuilder: (context, index) {
            return PostCardWidget(
              listPosts: listBookmark[index],
            );
          }),
    );
  }
}
