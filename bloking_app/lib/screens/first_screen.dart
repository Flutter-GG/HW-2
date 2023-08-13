import 'package:flutter/material.dart';

import '../model/bloking_model.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    super.key,
    this.product,
  });
  final Product? product;
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool typing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 49, 49),
        elevation: 1,
        title: Text(widget.product!.author),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              widget.product!.image,
              width: 200,
              height: 200,
            ),
            Text(widget.product!.title),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.product!.id.toString(),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                const Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.product!.content,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(widget.product!.date),
                const SizedBox(
                  height: 10,
                ),
                Text(widget.product!.subject)
              ],
            )
          ],
        ),
      ),
    );
  }
}
