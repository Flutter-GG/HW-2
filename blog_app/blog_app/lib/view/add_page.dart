import 'package:blog_app/extention/nav.dart';
import 'package:blog_app/main.dart';
import 'package:blog_app/models/blog_model.dart';
import 'package:blog_app/ui_classes/colors.dart';
import 'package:blog_app/ui_classes/spaces.dart';
import 'package:blog_app/widgets/button_widget.dart';
import 'package:blog_app/widgets/text_widget.dart';
import 'package:blog_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddNewBlog extends StatelessWidget {
  AddNewBlog({super.key, required this.userId});

  final int userId;

  TextEditingController? titleController = TextEditingController();
  TextEditingController? descriptionController = TextEditingController();
  TextEditingController? contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          data: 'Add New Blog',
          isBlod: true,
          size: 22,
        ),
        elevation: 0,
        backgroundColor: ColorsApp.primaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            context.popNav();
          },
        ),
      ),
      backgroundColor: ColorsApp.primaryColor,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            TextFieldWidget(
              hintText: 'Enter Blog Title',
              textController: titleController,
            ),
            Spaces.spacesH16,
            TextFieldWidget(
              hintText: 'Enter Blog Description',
              textController: descriptionController,
            ),
            Spaces.spacesH16,
            TextFieldWidget(
              hintText: 'Enter Blog Content',
              textController: contentController,
              maxLines: 10,
            ),
            Spaces.spacesH24,
            ButtonWidget(
              text: 'Add',
              onPressed: () {
                final userData = getUserData();

                final newBlog = Blog(
                    blogTitle: titleController!.text,
                    blogDescription: descriptionController!.text,
                    blogContent: contentController!.text,
                    authorName: userData.isEmpty ? 'not found' : userData[0],
                    authorId: userId,
                    blogImage:
                        'https://th.bing.com/th/id/OIP.yqgrW7qSDXZgjULh3iuuGgHaHa?pid=ImgDet&rs=1',
                    bookmark: false,
                    authorProfilePhoto: userData.isEmpty
                        ? 'https://th.bing.com/th/id/OIP.yqgrW7qSDXZgjULh3iuuGgHaHa?pid=ImgDet&rs=1'
                        : userData[1]);
                blogsList.insert(
                    0, newBlog); // insert at the beginning of the list
                final snackBar = SnackBar(
                  content: TextWidget(
                    data: 'Added successfully',
                    textColor: Colors.blue[900]!,
                    size: 15,
                  ),
                  backgroundColor: Colors.blue[50],
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.pop(context, "update");
              },
            )
          ],
        ),
      )),
    );
  }

  /// get user data like name and photo from user id
  getUserData() {
    List userData = [];
    for (var element in blogsList) {
      if (element.userId == userId) {
        userData.add(element.userName); // user name will be added to indext 0
        userData.add(
            element.userProfilePhoto); // user photo will be added to indext 1
      }
    }
    return userData;
  }
}
