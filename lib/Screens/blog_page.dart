import 'package:flutter/material.dart';

import '../Model/blog_data_model.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key, required this.blogDataModel});
  final BlogDataModel blogDataModel;

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blog",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black), 
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.blogDataModel.title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(width: 10),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(widget.blogDataModel.authorImage),
              ),
              SizedBox(width: 10),
              Text(
                widget.blogDataModel.author,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                "Date:",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.blogDataModel.dateBlog,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                image: NetworkImage(
                  widget.blogDataModel.image,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Content",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Text(
              widget.blogDataModel.content,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
