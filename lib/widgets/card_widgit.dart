import 'package:blog_app/extentions/app_extentions.dart';
import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';
import '../data_model/data_model.dart';
import '../screens/single_post_screen.dart';
import 'card_column.dart';

class CardWidgit extends StatefulWidget {
  const CardWidgit(
      {super.key, required this.blogs,});

  final Blogs blogs;

  @override
  State<CardWidgit> createState() => CardWidgitState();
}

class CardWidgitState extends State<CardWidgit> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNavigator(
            screen: SinglePostScreen(
          blogs: widget.blogs,
        ));
      },
      highlightColor: Colors.grey[500],
      child: Card(
        color: AppColors.lightGrey,
        child: SizedBox(
          height: 193,
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: CardColumn(
              blogs: widget.blogs,
            ),
          ),
        ),
      ),
    );
  }
}
