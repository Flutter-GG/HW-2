import 'package:flutter/material.dart';
import 'package:hw_2/model/bloggerData_class.dart';
import 'package:hw_2/utils/colors_app.dart';
import 'package:hw_2/utils/page_size.dart';
import 'package:hw_2/widget/appBar_widget.dart';
import 'package:hw_2/widget/button_widget.dart';

class EditPostPage extends StatefulWidget {
  const EditPostPage({
    super.key,
    this.listPosts,
  });

  final Posts? listPosts;

  @override
  State<EditPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<EditPostPage> {
  TextEditingController? titleController = TextEditingController();
  TextEditingController? bodyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.listPosts != null) {
      titleController = TextEditingController(text: widget.listPosts!.title);
      bodyController = TextEditingController(text: widget.listPosts!.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primeryColor,
      appBar:
          const AppBarWidget(title: "", icon: Icons.notifications_on_outlined),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PageSize.spaceH34,
              TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: 'Title',
                    border: buildBorder(),
                    enabledBorder: buildBorder(),
                    focusedBorder: buildBorder(),
                  )),
              PageSize.spaceH16,
              TextField(
                  controller: bodyController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Body ..',
                    border: buildBorder(),
                    enabledBorder: buildBorder(),
                    focusedBorder: buildBorder(),
                  )),
              PageSize.spaceH350,
              ButtonWidget(
                title: "eidit post ",
                onPressed: () {
                  print(titleController?.text);
                  print(bodyController?.text);
                  widget.listPosts!.title = titleController!.text;
                  widget.listPosts!.body = bodyController!.text;
                  Navigator.pop(context, "back");
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    );
  }
}
