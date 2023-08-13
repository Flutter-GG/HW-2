import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/users_models.dart';
import 'package:flutter_application_1/ui_class/colors_app.dart';
import 'package:flutter_application_1/utils/size_extension.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key, required this.post});

  final UsersModel post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.whiteColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            children: [
              TextWidget(
                text: post.title!,
                size: 18,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        post.profile ?? '',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        overflow: TextOverflow.fade,
                        post.name!,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      Text(post.date ?? ''),
                    ],
                  ),
                ],
              ),
              Text(
                post.details!,
                style: TextStyle(fontSize: 26),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                  child: Image.network(
                    post.image ?? '',
                    height: 170,
                    width: context.getWidth(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
