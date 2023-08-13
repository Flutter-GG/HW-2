import 'package:blog_app/components/custom_button.dart';
import 'package:blog_app/components/custom_text_field.dart';
import 'package:blog_app/extensions/measurements.dart';
import 'package:blog_app/main.dart';
import 'package:blog_app/models/post_model.dart';
import 'package:flutter/material.dart';

class NewPostView extends StatefulWidget {
  const NewPostView({super.key});

  @override
  State<NewPostView> createState() => _NewPostViewState();
}

class _NewPostViewState extends State<NewPostView> {
  final TextEditingController? controllerTitle = TextEditingController();

  final TextEditingController? controllerImage = TextEditingController();

  final TextEditingController? controllerDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SizedBox(
        width: context.getWidth(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextField(
              textFieldHint: "Post title ",
              controller: controllerTitle!,
            ),
            CustomTextField(
              textFieldHint: "Post description ",
              controller: controllerDescription!,
            ),
            CustomTextField(
              textFieldHint: "Post image url ",
              controller: controllerImage!,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              buttonText: "Post!",
              onPressed: () {
                posts.add(
                  PostModel(
                      title: controllerTitle!.text,
                      url: controllerImage!.text,
                      description: controllerDescription!.text,
                      creationDate: "2023-08-13",
                      userId: userId,
                      id: posts.length),
                );

                Navigator.pop(context, "newPost");
              },
            )
          ],
        ),
      ),
    );
  }
}
