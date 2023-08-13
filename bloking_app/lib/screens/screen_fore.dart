import 'package:flutter/material.dart';

class ScreenFore extends StatefulWidget {
  const ScreenFore({super.key});

  @override
  State<ScreenFore> createState() => _ScreenForeState();
}

class _ScreenForeState extends State<ScreenFore> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Icon(
              Icons.person,
              color: Colors.black,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
