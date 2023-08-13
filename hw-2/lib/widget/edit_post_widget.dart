import 'package:flutter/material.dart';
import 'package:hw_2/pages/add_post_page.dart';
import 'package:hw_2/utils/colors_app.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({
    super.key,
  });

  @override
  State<FloatingActionButtonWidget> createState() =>
      _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState
    extends State<FloatingActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "btnAdd",
      backgroundColor: ColorsApp.blueColo,
      child: const Icon(
        Icons.add,
        color: ColorsApp.blackColor,
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AddPostPage())).then(
          (value) {
            if (value == "back") {
              setState(() {});
            }
          },
        );
      },
    );
  }
}
