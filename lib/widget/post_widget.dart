import 'package:blog_app/model/blog.dart';
import 'package:blog_app/utilities/ui_classes/spaces.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final Blog blog;

  const PostWidget({super.key, required this.blog});
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text(widget.blog.postTitle!,
              style:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
          Spaces.spaceH24,
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  widget.blog.authorImage!,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Spaces.spaceW8,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget.blog.authorName!,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300)),
                      Text("  -  ",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Text("Follow",
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff689F38)))
                    ],
                  ),
                  Spaces.spaceH8,
                  Row(
                    children: [
                      Text(widget.blog.timeForReading!,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                      Text("  .  ",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                      Text(widget.blog.postCreateDate!,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey))
                    ],
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 200,
              width: 150,
              child: Image.network(
                widget.blog.postImage!,
                height: 100,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.blog.post!,
                style: const TextStyle(
                  height: 1.7,
                  letterSpacing: 1.5,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
          )
        ],
      ),
    );
  }
}
