import 'package:flutter/material.dart';
import 'package:project_week_3/models/blogModel.dart';
import 'package:project_week_3/pages/readingPage.dart';
import 'package:project_week_3/units/extention/spasing.dart';
import 'package:project_week_3/units/ui_classes/colors.dart';
import 'package:project_week_3/wedgits/bottomWedgit.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key, required this.blog});
  final BlogModel blog;

  @override
  State<BlogPage> createState() => _BlogPagePage();
}

class _BlogPagePage extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.purpleColor,
      appBar: AppBar(
        title: const Text("Blog  Page"),
        backgroundColor: ColorsApp.purpleColor,
      ),

      //bottomWedgit
      bottomNavigationBar: BottomWedgit(),

      //body

      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            widget.blog.images,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
        PSpasing.pVSpasing16,
        Text(
          overflow: TextOverflow.fade,
          widget.blog.postTitle,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        PSpasing.pVSpasing8,
        Text(
          overflow: TextOverflow.fade,
          widget.blog.description,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        ),
        PSpasing.pVSpasing16,
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            overflow: TextOverflow.fade,
            widget.blog.subject,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 50, bottom: 30),
          child: Text(
            overflow: TextOverflow.fade,
            "${widget.blog.likes} \like", // makesure
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),

        //button//
        Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  readingList!.add(widget.blog);
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
                  "Add to Reading Page",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ))
          ],
        )
      ]),
    );
  }
}
