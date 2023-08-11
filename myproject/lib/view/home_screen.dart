import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/widget/card_h.dart';
import 'package:myproject/widget/card_user.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Align(
            alignment: Alignment.center,
            child: Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: listBlog.length,
            itemBuilder: (context, index) {
              return Carduser(blog: listBlog[index]);
            }));
  }
}
