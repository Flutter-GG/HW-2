import 'package:blog_app/extentions/app_extentions.dart';
import 'package:flutter/material.dart';
import '../app_style_files/colors.dart';
import '../data_model/data_model.dart';
import '../main.dart';
import 'cards_of_blogs.dart';

//For Adding a new blog
class AddBlogButton extends StatefulWidget {
  const AddBlogButton(
      {super.key,
      required this.titleController,
      required this.blogContentController});

  final TextEditingController titleController;
  final TextEditingController blogContentController;

  @override
  State<AddBlogButton> createState() => _AddBlogButtonState();
}

class _AddBlogButtonState extends State<AddBlogButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightGrey,
      ),
      onPressed: () {
        if (widget.titleController.text.trim().isNotEmpty &&
            widget.blogContentController.text.trim().isNotEmpty) {
          final newBlog = Blogs(
            userID: 7,
            title: widget.titleController.text,
            content: widget.blogContentController.text,
            summary: "",
            userImg:
                "https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg",
            img:
                "https://contenthub-static.grammarly.com/blog/wp-content/uploads/2017/11/how-to-write-a-blog-post.jpeg",
            author: "Anonymous",
            date: "Now",
          );

          listOfBlogs.add(newBlog);
          setState(() {});
          context.findAncestorStateOfType<CardsOfBlogsState>()?.setState(() {});
          context.popNavigator();
        }
      },
      child: Text(
        "Add",
        style: TextStyle(fontSize: 20, color: AppColors.green),
      ),
    );
  }
}
