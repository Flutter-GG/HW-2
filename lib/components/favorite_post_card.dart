import 'package:flutter/material.dart';
import 'package:home_work2/constants/b_colors.dart';
import 'package:home_work2/main.dart';
import 'package:home_work2/models/posts_model.dart';
import 'package:home_work2/screens/home_screen.dart';
import 'package:home_work2/screens/post_screen.dart';
import 'package:home_work2/utils/extensions/Navigations.dart';
import 'package:home_work2/utils/extensions/Sizes.dart';

class FavoritPostCards extends StatefulWidget {
  const FavoritPostCards({
    super.key,
    required this.post,
  });

  final Posts post;

  @override
  State<FavoritPostCards> createState() => _FavoritPostCardsState();
}

class _FavoritPostCardsState extends State<FavoritPostCards> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        color: BColors.secondaryColor,
        width: context.Width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          widget.post.image!,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Text(
                          widget.post.title!,
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: BColors.darkTextColor),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 48),
                    width: 180,
                    child: Text(
                      widget.post.body!,
                      textAlign: TextAlign.end,
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        color: BColors.lidhtTextColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: BColors.tertiaryColor,
                    ),
                    child: Text(
                      widget.post.reactions.toString(),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
