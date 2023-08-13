import 'package:blog_app/main.dart';
import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/view/add_page.dart';
import 'package:blog_app/view/edit_page.dart';
import 'package:blog_app/functions/appbar_function.dart';
import 'package:blog_app/widgets/blog_card.dart';
import 'package:blog_app/widgets/icon_widget.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, required this.userId});
  final int userId;
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarFun(title: 'My Blogs'),
      backgroundColor: ColorsApp.primaryColor,
      body: ListView.builder(
        itemCount: blogsList.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              blogsList[index].authorId == widget.userId
                  ? BlogCard(blog: blogsList[index])
                  : Container(),
              Positioned(
                right: 20,
                top: 30,
                child: IconWidget(
                  icon: Icons.edit,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                EditBlog(blog: blogsList[index]))).then(
                      (value) => {
                        if (value == "update") {setState(() {})}
                      },
                    );
                  },
                ),
              ),
              Positioned(
                right: 20,
                top: 80,
                child: IconWidget(
                  icon: Icons.delete,
                  color: Colors.red,
                  onTap: () {
                    blogsList.removeAt(index);
                    setState(() {});
                    final snackBar = SnackBar(
                      content: TextWidget(
                        data: 'Deleted successfully',
                        textColor: Colors.red[900]!,
                        size: 15,
                      ),
                      backgroundColor: Colors.red[100],
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNewBlog(
                userId: widget.userId,
              ),
            ),
          ).then(
            (value) {
              if (value == "update") {
                setState(() {});
              }
            },
          );
        },
        backgroundColor: ColorsApp.blueColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
