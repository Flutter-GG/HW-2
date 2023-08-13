import 'package:flutter/material.dart';
import 'package:hw_2/main.dart';
import 'package:hw_2/model/bloggerData_class.dart';
import 'package:hw_2/pages/edit_page.dart';
import 'package:hw_2/pages/post_detail_page.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/utils/page_size.dart';
import 'package:hw_2/widget/Image_posts_Widget.dart';
import 'package:hw_2/widget/Text_widget.dart';
import 'package:hw_2/widget/icons_posts_widget.dart';
import 'package:hw_2/widget/icon_button_widget.dart';

class PostCardWidget extends StatefulWidget {
  const PostCardWidget({
    super.key,
    required this.listPosts,
    this.myFunction,
  });

  final Posts listPosts;
  final Function()? myFunction;

  @override
  State<PostCardWidget> createState() => PostCardWidgetState();
}

class PostCardWidgetState extends State<PostCardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailPage(
              listPosts: widget.listPosts,
            ),
          )),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(10),
        elevation: 7,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: ImagePostsWidget(
                    src: widget.listPosts.thumbnail!,
                  ),
                ),
                Container(
                  height: 200,
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 10, horizontal: 20),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        ColorsApp.blackColor.withOpacity(0),
                        ColorsApp.blackColor.withOpacity(0.8)
                      ])),
                  child: TextWidget(
                    title: widget.listPosts.title!,
                    textColor: ColorsApp.whiteColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconsPostsWidget(
                      icon: Icons.favorite, title: "${widget.listPosts.likes}"),
                  PageSize.spaceW10,
                  IconButtonWidget(
                    onPressed: () {
                      widget.listPosts.isBookmark =
                          !widget.listPosts.isBookmark!;

                      if (widget.listPosts.isBookmark!) {
                        print(widget.listPosts.isBookmark!);
                        listBookmark.add(widget.listPosts);
                        setState(() {});
                        widget.myFunction!();
                      } else {
                        listBookmark.remove(widget.listPosts);
                        setState(() {});
                        widget.myFunction!();
                      }
                    },
                    icon: widget.listPosts.isBookmark!
                        ? Icons.bookmark_outlined
                        : Icons.bookmark_outline,
                  ),
                  PageSize.spaceW10,
                  IconButtonWidget(
                    icon: Icons.edit,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditPostPage(
                                    listPosts: widget.listPosts,
                                  ))).then(
                        (value) {
                          if (value == "back") {
                            setState(() {});
                          }
                        },
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
