import 'package:flutter/material.dart';
import 'package:home_work2/constants/b_colors.dart';
import 'package:home_work2/constants/b_spaces.dart';
import 'package:home_work2/main.dart';
import 'package:home_work2/models/posts_model.dart';

class AddNewPost extends StatefulWidget {
  AddNewPost({super.key, required this.notifyParent});
  TextEditingController? TitleTextController = TextEditingController();
  TextEditingController? BodyTextController = TextEditingController();

  final Function() notifyParent;

  @override
  State<AddNewPost> createState() => _AddNewPostState();
}

class _AddNewPostState extends State<AddNewPost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "New Post",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: BColors.darkTextColor),
              ),
              Spaces.KspaceH24,
              TextField(
                controller: widget.TitleTextController,
                maxLines: 1,
                maxLength: 25,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: BColors.darkTextColor)),
                    labelText: "new post title"),
              ),
              TextField(
                controller: widget.BodyTextController,
                maxLength: 250,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: BColors.darkTextColor)),
                    labelText: "new Post Body"),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 24),
                child: ElevatedButton(
                  onPressed: () {
                    final newPost = Posts(
                      id: 99,
                      title: widget.TitleTextController!.text,
                      body: widget.BodyTextController!.text,
                      userId: 1,
                      image: "https://robohash.org/autquiaut.png",
                      tags: ["mystery", "english", "GeNERAL"],
                      reactions: 0,
                    );
                    PostsList!.add(newPost);

                    Navigator.pop(context);
                    setState(() {});
                    widget.notifyParent();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: BColors.secondaryColor,
                    fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
                  ),
                  child: Text("add post"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
