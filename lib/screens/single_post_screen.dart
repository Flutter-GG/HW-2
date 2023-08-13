import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';
import '../app_style_files/spaces.dart';
import '../data_model/data_model.dart';
import '../widgets/custom_author_icon.dart';

// ignore: must_be_immutable
class SinglePostScreen extends StatefulWidget {
  const SinglePostScreen({
    super.key,
    required this.blogs,
  });

  final Blogs blogs;

  @override
  State<SinglePostScreen> createState() => _SinglePostScreenState();
}

class _SinglePostScreenState extends State<SinglePostScreen> {
  bool follow = false;

  String following = "Follow";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            top: 20,
            right: 40,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  widget.blogs.title!, //Blog title
                  // maxLines: 3,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),

                Spaces.spaceH15,

                Row(
                  children: [
                    CircularIcon(
                      height: MediaQuery.of(context).size.height - 753,
                      width: MediaQuery.of(context).size.width - 343,
                      url: widget.blogs.userImg!,
                      radius: 25,
                    ),

                    Spaces.spaceW15,

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(widget.blogs.author!), //Author name

                            Spaces.spaceW10,
                            InkWell(
                              onTap: () {
                                follow
                                    ? following = "Follow"
                                    : following = "Unfollow";
                                follow = !follow;
                                setState(() {});
                              },
                              hoverColor: Colors.green.shade900,
                              child: Text(
                                following,
                                style: const TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),

                        Spaces.spaceH8,
                        Text(widget.blogs.date!,
                            style: TextStyle(
                                color: Colors
                                    .grey.shade500)), //From list //Blog date
                      ],
                    ), // From list //Author Name
                  ],
                ),

                Spaces.spaceH30,

                //Summary
                Text(
                  widget.blogs.summary!,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500, height: 1.5),
                ),

                Spaces.spaceH25,

                Image.network(
                  widget.blogs.img!,
                ), //From list //Blog Img

                Spaces.spaceH30,

                //Blog content
                Text(
                  widget.blogs.content!,
                  style: const TextStyle(
                      fontSize: 18, height: 1.5, fontWeight: FontWeight.w400),
                ),

                Spaces.spaceH40,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
