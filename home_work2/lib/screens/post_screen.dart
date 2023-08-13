import 'package:flutter/material.dart';
import 'package:home_work2/constants/b_colors.dart';
import 'package:home_work2/constants/b_spaces.dart';
import 'package:home_work2/models/posts_model.dart';
import 'package:home_work2/utils/extensions/Sizes.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key, required this.post});

  final Posts post;

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.post.title!,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: BColors.darkTextColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Published By ",
                    style:
                        TextStyle(fontSize: 18, color: BColors.darkTextColor),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      widget.post.image!,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Tags:",
                    style: TextStyle(
                        fontSize: 18,
                        color: BColors.darkTextColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Spaces.KspaceW32,
                  Row(
                    children: [
                      Text(widget.post.tags![0]),
                      Spaces.KspaceW8,
                      Text(widget.post.tags![1]),
                      Spaces.KspaceW8,
                      Text(widget.post.tags![2]),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                clipBehavior: Clip.antiAlias,
                width: context.Width,
                height: context.Height / 1.6,
                decoration: BoxDecoration(
                  color: BColors.primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                  border: Border.all(
                    color: BColors.secondaryColor,
                  ),
                ),
                child: Text(
                  widget.post.body!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: BColors.darkTextColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
