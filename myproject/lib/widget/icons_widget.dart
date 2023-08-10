import 'package:flutter/material.dart';

class Threicon extends StatelessWidget {
  const Threicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(Icons.save_alt_rounded),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.airplane_ticket),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.javascript)
      ],
    );
  }
}