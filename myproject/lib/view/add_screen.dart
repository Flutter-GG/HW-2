import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/model/my_model.dart';
import 'package:myproject/view/home_screen.dart';
import 'package:myproject/view/search_screen.dart';
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
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Add content",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () => context.gitpush(const Home()),
                icon: const Icon(
                  Icons.home,
                  color: Colors.black,
                )),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            context.textfield(idController),
            context.textfield(titlecontroller),
            context.textfield(authorcontroller),
            context.textfield(mincontroller),
            context.textfield(contentcontroller),
            context.textfield(subjectcontroller),
            const SizedBox(
              height: 40,
            ),
            elevatedButtonAdd(context)
          ],
        ),
      ),
    );
  }

  elevatedButtonAdd(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
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
            context.gitpush(const Home());
          },
          child: const Text(
            "Add Blog",
          )),
    );
  }
}
