import 'package:blog_app/extensions/measurements.dart';
import 'package:blog_app/models/post_model.dart';
import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({super.key, required this.post});

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: context.getWidth(),
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(
                  post.title!,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: context.getWidth(),
                  height: context.getHeight() * 0.5,
                  child: Image.network(post.url!),
                ),
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(post.creationDate!),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  post.description!,
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
