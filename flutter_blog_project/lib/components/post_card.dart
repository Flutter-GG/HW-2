import 'package:flutter/material.dart';
import 'package:flutter_blog_project/components/image_widget.dart';
import 'package:flutter_blog_project/constants/colors.dart';
import 'package:flutter_blog_project/constants/spaces.dart';
import 'package:flutter_blog_project/data_related_files/data_model.dart';
import 'package:flutter_blog_project/extentions/sizes.dart';
import 'package:flutter_blog_project/screens/post_info_screen.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key, required this.post});
  final BlogModel post;
  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // on tap a single post screen will appear
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PostInfoScreen(objectInfo: widget.post)));
      },
      child: Container(
        width: context.getWidth(),
        height: 170,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
        padding: const EdgeInsets.all(5),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //Row N1
          Row(
            children: [
              CircleAvatar(
                child: ImageWidget(
                  imgPath: widget.post.avatarImg,
                ),
              ),
              Spaces.spaceW5,
              Text('By ${widget.post.authorName}')
            ],
          ),
          //---------------

          //Row N2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 65,
                width: context.getWidth() - 100,
                child: Text(
                  widget.post.title,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ImageWidget(
                imgPath: widget.post.image,
                imgHeight: 65,
                imgWidth: 70,
              )
            ],
          ),
          //---------------

          //Row N3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Posted ${widget.post.date}',
                style: const TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  IconButton(
                    // this button is for saving the post to your reading list
                    onPressed: () {},
                    icon: Icon(
                      Icons.post_add,
                      color: AppColors.secondry,
                    ),
                  ),
                  Icon(Icons.arrow_circle_right_outlined,
                      color: AppColors
                          .secondry) // i just wanted to put this icon for the design but i didn't use it for navgation
                ],
              ),
            ],
          )
          //-------------------
        ]),
      ),
    );
  }
}
