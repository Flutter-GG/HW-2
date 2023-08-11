import 'package:flutter/material.dart';
import 'package:myproject/model/my_model.dart';
import 'package:myproject/widget/Carduserinfo.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  widget.blog.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
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
              Text(
                widget.blog.subject,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
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
      ),
    );
  }
}
