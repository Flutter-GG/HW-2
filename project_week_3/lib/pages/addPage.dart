import 'package:flutter/material.dart';
import 'package:project_week_3/main.dart';
import 'package:project_week_3/models/blogModel.dart';
import 'package:project_week_3/pages/homePage.dart';
import 'package:project_week_3/wedgits/bottomWedgit.dart';

import '../units/ui_classes/colors.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController postTitleController = TextEditingController(),
      descriptionController = TextEditingController(),
      subjectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsApp.purpleColor,
        appBar: AppBar(
          title: const Text("Home Page"),
          backgroundColor: ColorsApp.purpleColor,
        ),
        // BottomNavigationBar//
        bottomNavigationBar: BottomWedgit(),
        //body//
        body: Column(
          children: [
            TextField(
              controller: postTitleController,
              decoration: const InputDecoration(
                  hintText: "Enter Title", enabledBorder: OutlineInputBorder()),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                  hintText: "Enter Description",
                  enabledBorder: OutlineInputBorder()),
            ),
            TextField(
              controller: subjectController,
              decoration: const InputDecoration(
                  hintText: "Enter subject",
                  enabledBorder: OutlineInputBorder()),
            ),

            //butun//
            ElevatedButton(
                onPressed: () {
                  BlogModel newBlog = BlogModel(
                    postTitle: postTitleController.text,
                    Userid: 11,
                    description: descriptionController.text,
                    images:
                        'https://www.nicepng.com/png/detail/933-9332131_profile-picture-default-png.png',
                    likes: 0,
                    bookmark: true,
                    subject: subjectController.text,
                  );

                  ListBlogs!.add(newBlog);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(primary: ColorsApp.whiteColor),
                child: const Text('Add Post',
                    style: TextStyle(fontSize: 20, color: Colors.black))),
          ],
        ));
  }
}
