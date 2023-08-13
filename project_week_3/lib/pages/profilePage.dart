import 'package:flutter/material.dart';

import 'package:project_week_3/pages/readingPage.dart';
import 'package:project_week_3/wedgits/bottomWedgit.dart';

import '../units/ui_classes/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.purpleColor,
      appBar: AppBar(
        title: const Text("Profile Page"),
        backgroundColor: ColorsApp.purpleColor,
      ),

      //bottomWedgit
      bottomNavigationBar: const BottomWedgit(),

      //body

      body: Padding(
        padding: const EdgeInsets.only(left: 100),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://cdn.vectorstock.com/i/preview-1x/54/14/person-gray-photo-placeholder-woman-vector-24005414.jpg",
              // make sure
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "Noura Mohsen",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 80, bottom: 30),
            child: Text(
              "Email : noura@gmail.com",
              overflow: TextOverflow.fade,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, bottom: 30),
            child: Text(
              "Phone: 055555535555 ",
              overflow: TextOverflow.fade,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),

          //button//
          Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReadingPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(200, 50),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: const Text(
                    "My Reading List",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
