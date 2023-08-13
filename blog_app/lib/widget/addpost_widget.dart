import 'package:blog_app/main.dart';
import 'package:blog_app/model/blog.dart';
import 'package:blog_app/utilities/ui_classes/appcolor.dart';
import 'package:blog_app/utilities/ui_classes/spaces.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPostWidget extends StatefulWidget {
  @override
  _AddPostWidgetState createState() => _AddPostWidgetState();
}

final TextEditingController? controllerPostTitle = TextEditingController();
final TextEditingController? controllerPost = TextEditingController();
final TextEditingController? controllerAuthorName = TextEditingController();
final TextEditingController? controllerPostCreateDate = TextEditingController();

class _AddPostWidgetState extends State<AddPostWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                          final object = Blog(
                              authorImage:
                                  "https://media.istockphoto.com/id/846183030/vector/default-avatar-profile-icon-grey-photo-placeholder.jpg?s=612x612&w=0&k=20&c=h3hxX9qzVzeId8caDIoUt8KEBs2RyUGkXGWT6GqpZfk=",
                              authorName: controllerAuthorName!.text,
                              postTitle: controllerPostTitle!.text,
                              postImage:
                                  "http://www.palmares.lemondeduchiffre.fr/images/joomlart/demo/default.jpg",
                              post: controllerPost!.text,
                              timeForReading: "3 min to read",
                              postCreateDate: controllerPostCreateDate!.text,
                              psotId: 111,
                              bookMarked: false);
                          listBlog!.add(object);
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
                  controller: controllerPostCreateDate,
                  decoration: InputDecoration(
                    hintText: "Month,Day year",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGreyColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGreyColor),
                    ),
                  ),
                ),
                TextField(
                  controller: controllerAuthorName,
                  decoration: InputDecoration(
                    hintText: "Author Name",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGreyColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGreyColor),
                    ),
                  ),
                ),
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
    );
  }
}
