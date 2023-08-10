import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myproject/view/search_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Align(
        alignment: Alignment.center,
        child: Text(
          "Home",
          style: TextStyle(fontSize: 20),
        ),
      )),
      body: Card(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "https://duet-cdn.vox-cdn.com/thumbor/0x0:1290x860/1200x800/filters:focal(645x430:646x431):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/24841806/IMG_1562.jpg",
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("data")
                ],
              ),
            ),
            ListTile(
              trailing: Image.network(
                  'https://duet-cdn.vox-cdn.com/thumbor/0x0:1290x860/1200x800/filters:focal(645x430:646x431):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/24841806/IMG_1562.jpg'),
              title: const Text('Demo Title'),
              subtitle: const Text('This is a simple card in Flutter.'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text("data1"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Threicon(),
            )
          ],
        ),
      ),
    );
  }
}
