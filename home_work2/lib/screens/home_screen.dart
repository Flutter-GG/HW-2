import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:home_work2/components/appbar_widget.dart';
import 'package:home_work2/components/post_card_widget.dart';
import 'package:home_work2/constants/b_colors.dart';
import 'package:home_work2/constants/b_spaces.dart';
import 'package:home_work2/main.dart';
import 'package:home_work2/screens/add_post_screen.dart';
import 'package:home_work2/screens/favorite_screen.dart';
import 'package:home_work2/utils/extensions/Navigations.dart';
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
      appBar: AppBar(
          backgroundColor: BColors.primaryColor,
          title: Text(
            "Home",
            style: TextStyle(color: BColors.darkTextColor),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.bookmark_added_sharp),
              color: Colors.black,
              onPressed: () {
                //  context.push(screen: FavoriteScreen());
              },
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(screen: AddNewPost());
        },
        backgroundColor: BColors.primaryColor,
        child: Icon(
          Icons.add,
          color: BColors.darkTextColor,
        ),
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
