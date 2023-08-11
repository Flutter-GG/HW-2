import 'package:blog_app/main.dart';
import '/ui_classes/colors.dart';
import 'package:blog_app/ui_classes/spaces.dart';
import 'package:blog_app/widgets/blog_card.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: ColorsApp.primaryColor,
          title: const Row(
            children: [
              TextWidget(
                data: "Read",
                size: 22,
              ),
              TextWidget(
                data: "able",
                isBlod: true,
                size: 22,
              ),
            ],
          )),
      backgroundColor: ColorsApp.primaryColor,
      body: ListView.builder(
          itemCount: blogsList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [BlogCard(blog: blogsList[index]), Spaces.spacesH16],
            );
          }),
    );
  }
}
