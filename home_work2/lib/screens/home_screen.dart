import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:home_work2/components/appbar_widget.dart';
import 'package:home_work2/components/post_card_widget.dart';
import 'package:home_work2/constants/b_colors.dart';
import 'package:home_work2/constants/b_spaces.dart';
import 'package:home_work2/main.dart';
import 'package:home_work2/utils/extensions/Sizes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BColors.primaryColor,
      appBar: CustomAppBar(
        title: "Home",
        firstIcon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        isLeading: false,
      ),
      body: ListView.builder(
        itemBuilder: (context, int index) {
          return PostCards(
            post: PostsList![index],
          );
        },
        itemCount: PostsList!.length,
      ),
    );
  }
}
