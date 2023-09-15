import 'package:flutter/material.dart';
import 'package:project_week_3/pages/homePage.dart';
import 'package:project_week_3/pages/profilePage.dart';
import 'package:project_week_3/pages/readingPage.dart';
import 'package:project_week_3/wedgits/searchWedgit.dart';

// ignore: camel_case_types
class BottomWedgit extends StatelessWidget {
  const BottomWedgit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Searchwedgit()));
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReadingPage()));
              },
              icon: const Icon(
                Icons.book_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              icon: const Icon(
                Icons.person,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
