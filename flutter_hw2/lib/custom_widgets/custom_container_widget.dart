import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_border_radius_images.dart';
import 'package:flutter_hw2/custom_widgets/custom_icon_buttons.dart';
import 'package:flutter_hw2/custom_widgets/extensions.dart';
import 'package:flutter_hw2/custom_widgets/custom_rounded_images.dart';

/* this file is my custom container for the post, for home, search, reading list and profile posts */

class CustomPostContainerWidget extends StatelessWidget {
  const CustomPostContainerWidget(
      {super.key,
      this.onPressedBookmark,
      this.onPressedRemove,
      this.onPressedOptions,
      this.postImage =
          'https://th.bing.com/th/id/OIP.yqgrW7qSDXZgjULh3iuuGgHaHa?pid=ImgDet&rs=1',
      this.readTime = 'reading time',
      this.date = 'date',
      this.title = 'title',
      this.profileName = 'profile name',
      this.profileImage =
          'https://th.bing.com/th/id/OIP.yqgrW7qSDXZgjULh3iuuGgHaHa?pid=ImgDet&rs=1',
      this.reactions = 0,
      this.isBookedMark = false,
      this.userId});

  final Function()? onPressedBookmark;
  final Function()? onPressedRemove;
  final Function()? onPressedOptions;
  final String? postImage;
  final String? readTime;
  final String? date;
  final String? title;
  final String? profileName;
  final String? profileImage;
  final int? reactions;
  final int? userId;
  final bool isBookedMark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: context.screenWidth,
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      CustomRoundedImages(roundedImage: profileImage),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('$profileName، UserID: $userId')
                    ]),
                    Text(
                      '$title',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('$readTime • $date • $reactions'),
                  ]),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBorderRadiusImages(borderRadiusImage: postImage),
                Row(
                  children: [
                    CustomIconButtons(
                      iconButton: isBookedMark
                          ? Icons.bookmark
                          : Icons.bookmark_add_outlined,
                      onPressed: onPressedBookmark,
                    ),
                    CustomIconButtons(
                      iconButton: Icons.remove_circle_outline,
                      onPressed: onPressedRemove,
                    ),
                    CustomIconButtons(
                      iconButton: Icons.more_horiz,
                      onPressed: onPressedOptions,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}