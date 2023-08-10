import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: const Center(
            child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search), hintText: "search")),
          ),
        ),
      ),
    );
  }
}
