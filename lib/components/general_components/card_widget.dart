import 'package:flutter/material.dart';
import 'package:hw2/components/text/text_widget.dart';
import 'package:hw2/constants/constants.dart';
import 'package:hw2/data/post_model.dart';
import 'package:hw2/extensions/navigator.dart';
import 'package:hw2/screens/edit_screen.dart';
import 'package:hw2/screens/post_details.dart';
import 'package:hw2/screens/posts_screen.dart';
import 'package:hw2/screens/reading_list_screen.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key, required this.post, required this.index });

  final Post post;
  final int index;

  @override
  State<CardWidget> createState() => CardWidgetState();
}

class CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      // color: Colors.orange[200],
      height: 180, // ToDo change
      child: InkWell(
        onTap: () {
          setState(() {
            context.getNavigator(PostDetailsScreen(
              post: widget.post,
            ));
          });
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          margin: const EdgeInsets.all(10),
          elevation: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, //todo
            children: [
              Column(
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: Image.network(
                          widget.post.avatar!,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    TextWidget(text: widget.post.author!, size: 15)
                  ]),
                  TextWidget(text: widget.post.title!, size: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: widget.post.readingTime!,
                        size: 15,
                        color: Colors.grey,
                      ),
                      width16,
                      TextWidget(
                          text: widget.post.date!,
                          size: 15,
                          color: Colors.grey),
                    ],
                  ),
                  height8,
                  TextWidget(
                      text: widget.post.category!, size: 15, color: Colors.grey[200] ?? const Color.fromARGB(255, 229, 35, 35))
                ],
              ),
              Column(
                children: [
                  Image.network(
                    widget.post.postImage!,
                    height: 100,
                    width: 100,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              widget.post.readingList =! widget.post.readingList!;
                              context.findAncestorStateOfType<PostsScreenState>()?.setState(() {});
                              context.findAncestorStateOfType<ReadingListScreenState>()?.setState(() {});
                            // if (widget.post.readingList!) {
                            //   readingList.add(widget.post);
                            // }else{
                            //   readingList.remove(widget.post);
                            //   listPosts.firstWhere((element) => element.id == widget.post.id).readingList = false;
                            // }
                            });
                          },
                          icon: Icon( widget.post.readingList!? Icons.bookmark_added_rounded : Icons.bookmark_add_outlined)),
                      IconButton(
                          onPressed: () {
                            context.getNavigator(Edit_Screen(post: widget.post));
                          },
                          icon: const Icon(Icons.edit)),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
