import 'package:flutter/material.dart';
import 'package:hw2/screens/init_screen.dart';
import 'package:hw2/utility/readUsers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
readUserInformation();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitScreen(),
    );
  }
}
