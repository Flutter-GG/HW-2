import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/widget/card_user.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "reading list",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
            itemCount: listBlog.length,
            itemBuilder: (context, index) {
              return Carduser(blog: listBlog[index]);
            }));
  }
}
