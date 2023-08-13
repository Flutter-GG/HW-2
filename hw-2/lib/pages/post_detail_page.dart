import 'package:flutter/material.dart';
import 'package:hw_2/main.dart';
import 'package:hw_2/model/bloggerData_class.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/utils/page_size.dart';
import 'package:hw_2/widget/Image_posts_Widget.dart';
import 'package:hw_2/widget/Text_widget.dart';
import 'package:hw_2/widget/appBar_widget.dart';
import 'package:hw_2/widget/icon_button_widget.dart';
import 'package:hw_2/widget/icons_posts_widget.dart';

class PostDetailPage extends StatefulWidget {
  const PostDetailPage({super.key, required this.listPosts});
  final Posts listPosts;

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.whiteColor,
      appBar: const AppBarWidget(
        title: "",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImagePostsWidget(
                src: widget.listPosts.thumbnail!, heightContainer: 300),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              alignment: Alignment.bottomLeft,
              child: TextWidget(
                title: widget.listPosts.title!,
                textColor: ColorsApp.blueColo,
                fontSize: 30,
              ),
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
                        listBookmark.add(widget.listPosts);
                        setState(() {});
                      } else {
                        listBookmark.remove(widget.listPosts);
                        setState(() {});
                      }
                    },
                    icon: widget.listPosts.isBookmark!
                        ? Icons.bookmark_outlined
                        : Icons.bookmark_outline,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              alignment: Alignment.bottomLeft,
              child: TextWidget(
                title: widget.listPosts.body!,
                textColor: ColorsApp.blackColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
