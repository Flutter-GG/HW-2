import 'package:flutter/material.dart';
import '../data_model/data_model.dart';
import '../main.dart';
import 'card_widgit.dart';

class CardsOfBlogs extends StatefulWidget {
  const CardsOfBlogs({
    super.key,
    this.blogs,
    this.notifyParent,
  });

  final Blogs? blogs;
  final Function()? notifyParent;

  @override
  State<CardsOfBlogs> createState() => CardsOfBlogsState();
}

class CardsOfBlogsState extends State<CardsOfBlogs> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfBlogs.length,
      itemBuilder: ((context, index) {
        return CardWidgit(
          blogs: listOfBlogs[index],
        );
      }),
    );
  }
}
