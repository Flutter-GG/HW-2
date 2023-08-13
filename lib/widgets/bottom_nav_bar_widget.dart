import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';
import 'package:flutter_application_1/screens/reading_list_screen.dart';
import 'package:flutter_application_1/screens/search_screen.dart';
import 'package:flutter_application_1/ui_class/colors_app.dart';
import 'package:flutter_application_1/utils/navig_wedget.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home_outlined),
              color: ColorApp.blackColor,
              onPressed: () {
                context.push(path: const HomeScreen());
              },
            ),
            IconButton(
              icon: const Icon(Icons.search_outlined),
              color: ColorApp.blackColor,
              onPressed: () {
                context.push(path:  SearchScreen());
              },
            ),
            IconButton(
              icon: const Icon(Icons.bookmark_outline),
              color: ColorApp.blackColor,
              onPressed: () {
                context.push(path: const ReadingListScreen());
              },
            ),
            IconButton(
              icon: const Icon(Icons.person_outlined),
              color: ColorApp.blackColor,
              onPressed: () {
                context.push(path: const ProfileScreen());
              },
            ),
          ],
        ),

        // currentIndex: widget.currentIndex,
        //   onTap: widget.onTap,
      ),
    );
  }
}
