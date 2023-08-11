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
            context.Textfield(idController),
            context.Textfield(titlecontroller),
            context.Textfield(authorcontroller),
            context.Textfield(mincontroller),
            context.Textfield(contentcontroller),
            context.Textfield(subjectcontroller),
            SizedBox(
              height: 40,
            ),
            ElevatedButtonAdd(context)
          ],
        ),
      ),
    );
  }


  ElevatedButtonAdd(BuildContext context) {
    return SizedBox(
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
    );
  }
}
