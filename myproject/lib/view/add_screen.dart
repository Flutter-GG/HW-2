import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/model/my_model.dart';
import 'package:myproject/view/home_screen.dart';

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
      appBar: AppBar(title: Text("Add content"), actions: [
        IconButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home())),
            icon: Icon(Icons.home)),
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: idController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "enter id"),
            ),
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "enter ttitle"),
            ),
            TextField(
              controller: authorcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "enter author"),
            ),
            TextField(
              controller: mincontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "enter min"),
            ),
            TextField(
              controller: contentcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "enter content"),
            ),
            TextField(
              controller: subjectcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "enter subject"),
            ),
            ElevatedButton(
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
                },
                child: Text("data"))
          ],
        ),
      ),
    );
  }
}
