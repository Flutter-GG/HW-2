import 'package:flutter/material.dart';
import 'package:myproject/model/my_model.dart';

class Carduserinfo extends StatefulWidget {
  const Carduserinfo({
    super.key,
    required this.blog,
  });
  final Blog blog;
  @override
  State<Carduserinfo> createState() => _CarduserinfoState();
}

class _CarduserinfoState extends State<Carduserinfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(widget.blog.author),
            SizedBox(
              width: 50,
            ),
            Text("Follow", style: TextStyle(color: Colors.green)),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              widget.blog.min,
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
            SizedBox(
              width: 20,
            ),
            Text("Apr2,2023"),
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
