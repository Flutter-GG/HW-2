import 'package:blog_app/model/blog.dart';
import 'package:blog_app/utilities/ui_classes/appcolor.dart';
import 'package:blog_app/utilities/ui_classes/spaces.dart';
import 'package:flutter/material.dart';

class UpdatePostWidget extends StatefulWidget {
  const UpdatePostWidget({super.key, required this.blog});
  final Blog blog;
  @override
  _UpdatePostWidgetState createState() => _UpdatePostWidgetState();
}

TextEditingController? controllerPostTitle;
TextEditingController? controllerPost;

class _UpdatePostWidgetState extends State<UpdatePostWidget> {
  @override
  void initState() {
    controllerPostTitle = TextEditingController(text: widget.blog.postTitle);
    controllerPost = TextEditingController(text: widget.blog.post);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.5,
                    ))),
                    child: Row(
                      children: [
                        new InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: new Padding(
                            padding: new EdgeInsets.all(10.0),
                            child: new Text("Close",
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey)),
                          ),
                        ),
                        Spaces.spaceW170,
                        new InkWell(
                          onTap: () {},
                          child: new Padding(
                            padding: new EdgeInsets.all(10.0),
                            child: new Text("Draft",
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey)),
                          ),
                        ),
                        new InkWell(
                          onTap: () {
                            widget.blog.postTitle = controllerPostTitle!.text;

                            widget.blog.post = controllerPost!.text;

                            Navigator.pop(context, "i'm here");
                          },
                          child: new Padding(
                            padding: new EdgeInsets.all(10.0),
                            child: new Text("Next",
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff689F38))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spaces.spaceH24,
                  TextField(
                    controller: controllerPostTitle,
                    decoration: InputDecoration(
                      hintText: "post title",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.lightGreyColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.lightGreyColor),
                      ),
                    ),
                  ),
                  Spaces.spaceH16,
                  TextField(
                    controller: controllerPost,
                    maxLines: 7,
                    decoration: InputDecoration(
                      hintText: "post",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.lightGreyColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.lightGreyColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
