import 'package:flutter/material.dart';

import '../main.dart';
import '../model/Card_widget.dart';

class ReadScreen extends StatelessWidget {
  const ReadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            // Align(alignment: Alignment.bottomLeft,),

            Text(
              "Read Line",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              width: 150,
            ),

            Icon(
              Icons.person,
              color: Colors.grey,
              size: 25,
            ),
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 25,
            ),
            Icon(
              Icons.percent,
              color: Colors.grey,
              size: 25,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: listProduct?.length,
        itemBuilder: (context, index) {
          return CardWidget(product: listProduct![index]);
        },
      ),
    );
  }
}
