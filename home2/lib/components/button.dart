import 'package:flutter/material.dart';

class MyBoutton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyBoutton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 189, 175, 225),
            borderRadius: BorderRadius.circular(60)),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),

            const SizedBox(width: 20),
            //icon
            const Icon(Icons.start, color: Colors.white)
          ],
        ),
      ),
    );
  }
}
