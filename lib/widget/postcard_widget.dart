import 'package:blog_app/model/blog.dart';
import 'package:blog_app/screen/post_screen.dart';
import 'package:blog_app/utilities/ui_classes/appcolor.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class PostCardWidget extends StatefulWidget {
  const PostCardWidget({
    super.key,
    required this.blog,
  });

  final Blog blog;

  @override
  State<PostCardWidget> createState() => _PostCardWidgetState();
}

class _PostCardWidgetState extends State<PostCardWidget> {
  @override
  Widget build(BuildContext context) {
    var bookMarked = widget.blog.bookMarked;
    return InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PostScreen(
                      blog: widget.blog,
                    ))),
        child: SizedBox(
          height: 180,
          child: Card(
            shape: Border(
              bottom: BorderSide(
                width: 1.5,
                color: AppColors.lightGreyColor,
              ),
            ),
            margin: const EdgeInsets.only(bottom: 5, top: 5),
            elevation: 0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    widget.blog.authorImage!,
                                    height: 30,
                                    width: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                widget.blog.authorName!,
                                style: const TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              overflow: TextOverflow.fade,
                              widget.blog.postTitle!,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                widget.blog.timeForReading!,
                                style: const TextStyle(fontSize: 10),
                              ),
                              const Text("   .   "),
                              Text(widget.blog.postCreateDate!,
                                  style: const TextStyle(fontSize: 10)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9),
                        child: Image.network(
                          widget.blog.postImage!,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0, right: 0),
                            child: IconButton(
                              onPressed: () {
                                widget.blog.bookMarked = !bookMarked;
                                setState(() {});
                                if (!bookMarked) {
                                  toreadlistBlog!.add(widget.blog);
                                } else {
                                  toreadlistBlog!.remove(widget.blog);
                                  setState(() {});
                                }
                              },
                              icon: bookMarked!
                                  ? const Icon(Icons.bookmark)
                                  : const Icon(Icons.bookmark_add_outlined),
                              //
                              color: AppColors.lightGreyColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0, right: 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.do_not_disturb),
                              color: AppColors.lightGreyColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0, right: 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_horiz),
                              color: AppColors.lightGreyColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
          ),
        ));
  }
}
