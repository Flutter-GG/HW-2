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
            const SizedBox(
              width: 50,
            ),
            const Text("Follow", style: TextStyle(color: Colors.green)),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              widget.blog.min,
              style: const TextStyle(fontWeight: FontWeight.w100),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text("Apr2,2023"),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
