import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
