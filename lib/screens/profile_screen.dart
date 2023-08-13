import 'package:flutter/material.dart';
import 'package:hw2/components/general_components/card_widget.dart';
import 'package:hw2/components/text/text_widget.dart';
import 'package:hw2/constants/app_styles.dart';
import 'package:hw2/data/global_data.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("profile"),
        backgroundColor: primaryColor,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(child: TextWidget(text: user.author.toString())),
              ClipOval(
                child: Image.network(listPosts
                    .firstWhere((element) => element.userId == user.userId)
                    .avatar
                    .toString()),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: listPosts.length,
                    itemBuilder: (BuildContext, index) {
                      if (listPosts[index].userId == user.userId) {
                        return CardWidget(
                          post: listPosts[index],
                          index: index,
                        );
                      }
                      return null;
                    }),
              )
            ],
          )),
    );
  }
}
