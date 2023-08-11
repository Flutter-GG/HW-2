import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/view/add_screen.dart';
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
          backgroundColor: Colors.white,
          leading: const Align(
            alignment: Alignment.center,
            child: Text(
              "Home",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          actions: [
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                heroTag: "btnAdd",
                child: Icon(Icons.add_box_rounded),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Addpage())))
          ],
        ),
        body: ListView.builder(
            itemCount: listBlog.length,
            itemBuilder: (context, index) {
              return Carduser(blog: listBlog[index]);
            }));
  }
}
