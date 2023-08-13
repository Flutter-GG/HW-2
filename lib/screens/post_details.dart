import 'package:flutter/material.dart';
import 'package:hw2/components/text/text_widget.dart';
import 'package:hw2/constants/app_styles.dart';
import 'package:hw2/constants/constants.dart';
import 'package:hw2/data/post_model.dart';

class PostDetailsScreen extends StatefulWidget {
  const PostDetailsScreen({super.key, required this.post});
  final Post post;

  @override
  State<PostDetailsScreen> createState() => _PostDetailsScreenState();
}


class _PostDetailsScreenState extends State<PostDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("post details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextWidget(
                  text: widget.post.title!,
                  size: 30,
                  isBold: true,
                ),
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        widget.post.avatar!,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    width16,
                    Column(
                      children: [
                        TextWidget(
                          text: widget.post.author!,
                          size: 18,
                        ),
                        TextWidget(
                          text:
                              "${widget.post.readingTime}  .  ${widget.post.date}",
                          size: 14,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
                Image.network(
                  widget.post.postImage!,
                  height: 200,
                  width: 200,
                ),
                TextWidget(text: widget.post.post!, size: 25),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
