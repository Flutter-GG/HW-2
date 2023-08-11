import 'package:flutter/material.dart';
import 'package:myproject/model/my_model.dart';

class Blogs extends StatefulWidget {
  const Blogs({
    super.key,
    required this.blog,
  });
  final Blog blog;
  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(widget.blog.title)),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    widget.blog.image,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Carduserinfo(
                  blog: widget.blog,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(widget.blog.subject),
            SizedBox(
              height: 30,
            ),
            Image.network(
              widget.blog.image,
              width: 400,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "General overview",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.blog.content),
            )
          ],
        ),
      ),
    );
  }
}

class Carduserinfo extends StatefulWidget {
  const Carduserinfo({
    super.key,
    required this.blog,
  });
  final Blog blog;
  @override
  State<Carduserinfo> createState() => _CarduserinfoState();
}

class _CarduserinfoState extends State<Carduserinfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(widget.blog.author),
            SizedBox(
              width: 20,
            ),
            Text("Follow"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(widget.blog.min),
            SizedBox(
              width: 20,
            ),
            Text("ddd"),
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
