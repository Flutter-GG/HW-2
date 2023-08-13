import 'package:flutter/material.dart';
import 'package:project_week_3/models/blogModel.dart';
import 'package:project_week_3/units/extention/spasing.dart';
import 'package:project_week_3/wedgits/bottomWedgit.dart';
import '../units/ui_classes/colors.dart';

class EditBlog extends StatefulWidget {
  const EditBlog({
    super.key,
    this.blog,
  });

  final BlogModel? blog;

  @override
  State<EditBlog> createState() => _EditBlogState();
}

class _EditBlogState extends State<EditBlog> {
  TextEditingController? postTitleController = TextEditingController();
  TextEditingController? descriptionController = TextEditingController();
  @override
  void initState() {
    // super.initState();
    if (widget.blog != null) {
      postTitleController = TextEditingController(text: widget.blog!.postTitle);
      descriptionController =
          TextEditingController(text: widget.blog!.description);
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Edit Page"),
          backgroundColor: ColorsApp.purpleColor,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                widget.blog!.postTitle = postTitleController!.text;
                widget.blog!.description = descriptionController!.text;

                Navigator.pop(context, "edit");
                setState(() {});
              },
              icon: Icon(Icons.save),
            ),
          ]),
      //bottomList//
      bottomNavigationBar: BottomWedgit(),
      //backgrountColor
      backgroundColor: ColorsApp.purpleColor,
      //body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PSpasing.pVSpasing64,
              TextField(
                  controller: postTitleController,
                  decoration: InputDecoration(
                    hintText: 'Title',
                    border: buildBorder(),
                    enabledBorder: buildBorder(),
                    focusedBorder: buildBorder(),
                  )),
              PSpasing.pHSpasing16,
              TextField(
                  controller: descriptionController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: '',
                    border: buildBorder(),
                    enabledBorder: buildBorder(),
                    focusedBorder: buildBorder(),
                  )),
              const SizedBox(
                height: 350,
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );
  }
}
