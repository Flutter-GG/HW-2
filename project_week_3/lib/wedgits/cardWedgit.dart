import 'package:flutter/material.dart';
import 'package:project_week_3/models/blogModel.dart';
import 'package:project_week_3/pages/blogPage.dart';
import 'package:project_week_3/pages/editPage.dart';
import 'package:project_week_3/pages/homePage.dart';
import 'package:project_week_3/pages/readingPage.dart';
import '../units/ui_classes/colors.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    super.key,
    required this.blog,
    this.newFunction,
  });

  final BlogModel blog;
  final Function()? newFunction;

  @override
  State<CardWidget> createState() => CardWidgetState();
}

class CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BlogPage(
                    blog: widget.blog,
                  ))),
      child: SizedBox(
          height: 100,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.all(8),
            elevation: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            widget.blog.images,
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(
                              overflow: TextOverflow.fade,
                              widget.blog.postTitle,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(widget.blog.description),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      overflow: TextOverflow.fade,
                      "${widget.blog.likes} \like",
                      style: TextStyle(
                          color: ColorsApp.purpleColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),

                  // bookMarkIcon
                  IconButton(
                      onPressed: () {
                        widget.blog.bookmark = !widget.blog.bookmark;
                        if (widget.blog.bookmark) {
                          readingList!.add(widget.blog);
                          setState(() {});
                        } else {
                          readingList?.remove(widget.blog);

                          setState(() {});
                          widget.newFunction!();
                        }
                        setState(() {});
                      },
                      icon: Icon(
                        widget.blog.bookmark
                            ? Icons.bookmark
                            : Icons.bookmark_border,
                        color: ColorsApp.purpleColor,
                      )),

// editIcon
                  IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    EditBlog(blog: widget.blog))).then((value) {
                          if (value == "edit") {
                            setState(() {});
                          }
                          return const HomePage();
                        });
                      })
                ]),
          )),
    );
  }
}
