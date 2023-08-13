import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:home_work2/components/favorite_post_card.dart';
import 'package:home_work2/constants/b_colors.dart';
import 'package:home_work2/models/posts_model.dart';

List<Posts>? WishList = [];

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key, required this.post});
  final Posts post;

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: BColors.secondaryColor,
          title: Text('Reading List'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: ListView.builder(
          itemBuilder: (context, int index) {
            return InkWell(
                // this will allow the user to delete the post from the list
                onLongPress: () {
                  WishList!.remove(widget.post);
                  setState(() {});
                },
                child: FavoritPostCards(post: WishList![index]));
          },
          itemCount: WishList!.length,
        ));
    ;
  }
}
