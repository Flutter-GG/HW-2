import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/reading_list_model.dart';
import 'package:flutter_application_1/models/users_models.dart';
import 'package:flutter_application_1/screens/post_screen.dart';
import 'package:flutter_application_1/screens/reading_list_screen.dart';
import 'package:flutter_application_1/ui_class/colors_app.dart';
import 'package:flutter_application_1/utils/navig_wedget.dart';

class PostViewWidget extends StatefulWidget {
  final ReadingListModel? readingListModel;

  const PostViewWidget({super.key, required this.post, this.readingListModel});

  final UsersModel post;

  @override
  State<PostViewWidget> createState() => PostViewWidgetState();
}

class PostViewWidgetState extends State<PostViewWidget> {
  //final post = widget.readingListModel?.readingItems[index];

  static get index => null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PostScreen(
                    post: widget.post,
                  ))),
      // child: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      child: Expanded(
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Padding(
                  //padding: const EdgeInsets.all(5.0),
                  //child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      widget.post.profile!,
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // ),
                  Text(
                    overflow: TextOverflow.fade,
                    widget.post.name ?? '',
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 190,
                        child: Text(
                          overflow: TextOverflow.fade,
                          widget.post.title ?? '',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        widget.post.date ?? '',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: Image.network(
                            widget.post.image ??
                                'https://miro.medium.com/v2/resize:fit:1100/format:webp/1*08uroEtOa_OrCUim_axLbQ@2x.png',
                            height: 50,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(children: [
                        IconButton(
                          icon: const Icon(Icons.bookmark_add_outlined),
                          onPressed: () {
                            context.push(path: ReadingListScreen());
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove_circle_outline),
                          onPressed: () {
                            // widget.readingListModel.removeFromReadlist(post);

                            setState(() {});
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.more_horiz),
                          onPressed: () {},
                        ),
                      ]),
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
