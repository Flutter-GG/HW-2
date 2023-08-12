import 'package:flutter/material.dart';
import 'package:flutter_hw2/screens/add_post_screen.dart';

/* this file is my custom floating button for move to page of create new post */

class CustomFloatingbuttonAction extends StatefulWidget {
  const CustomFloatingbuttonAction({
    Key? key,
  }) : super(key: key);

  @override
  CustomFloatingbuttonActionState createState() =>
      CustomFloatingbuttonActionState();
}

class CustomFloatingbuttonActionState
    extends State<CustomFloatingbuttonAction> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPostPage()),
          );
        },
        child: const Icon(Icons.add));
  }
}
