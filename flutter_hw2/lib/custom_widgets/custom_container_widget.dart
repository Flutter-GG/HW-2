import 'package:flutter/material.dart';
import 'package:flutter_hw2/custom_widgets/custom_icon_buttons.dart';
import 'package:flutter_hw2/custom_widgets/extensions.dart';

class CustomPostContainerWidget extends StatelessWidget {
  const CustomPostContainerWidget(
      {super.key,
      this.onPressedBookmark,
      this.onPressedRemove,
      this.onPressedOptions,
      this.postImage,
      this.readTime = 'reading time',
      this.date = 'date',
      this.title = 'title',
      this.profileName = 'profile name',
      this.profileImage,
      this.reactions = 0});

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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network('$profileImage',
                            width: 20, height: 20, fit: BoxFit.fill),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('$profileName')
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network('$postImage',
                      width: 80, height: 50, fit: BoxFit.cover),
                ),
                Row(
                  children: [
                    CustomIconButtons(
                      iconButton: Icons.bookmark_add_outlined,
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
