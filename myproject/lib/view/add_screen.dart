import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/model/my_model.dart';
import 'package:myproject/view/home_screen.dart';
import 'package:myproject/view/utility/extension.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  TextEditingController idController = TextEditingController(),
      titlecontroller = TextEditingController(),
      mincontroller = TextEditingController(),
      authorcontroller = TextEditingController(),
      contentcontroller = TextEditingController(),
      subjectcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Add content",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () => context.gitpush(Home()),
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                )),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: idController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(),
                    hintText: "enter id"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(),
                    hintText: "enter ttitle"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: authorcontroller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(),
                    hintText: "enter author"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: mincontroller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(),
                    hintText: "enter min"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: contentcontroller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(),
                    hintText: "enter content"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: subjectcontroller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(),
                    hintText: "enter subject"),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    Blog newblog = Blog(
                      id: idController.text,
                      title: titlecontroller.text,
                      author: authorcontroller.text,
                      content: contentcontroller.text,
                      image:
                          "https://duet-cdn.vox-cdn.com/thumbor/0x0:1290x860/1200x800/filters:focal(645x430:646x431):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/24841806/IMG_1562.jpg",
                      subject: subjectcontroller.text,
                      min: mincontroller.text,
                    );
                    listBlog.add(newblog);
                    setState(() {});
                    context.gitpush(Home());
                  },
                  child: Text(
                    "Add Blog",
                  )),
            )
          ],
        ),
      ),
    );
  }
}
