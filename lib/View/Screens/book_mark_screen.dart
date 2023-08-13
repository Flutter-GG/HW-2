import 'package:best_places/View/widget/color.dart';
import 'package:best_places/view_model/card_widget.dart';
import 'package:best_places/view_model/islands_model.dart';
import 'package:flutter/material.dart';

List<Islands>? islandsList = [];

class BookMarks extends StatefulWidget {
  const BookMarks({
    super.key,
  });

  @override
  State<BookMarks> createState() => _BookMarks();
}

class _BookMarks extends State<BookMarks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: btnColor,
          elevation: 0,
          leading: const BackButton(color: Colors.black),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                      child: SizedBox(
                        height: 250,
                        child: CardWidget(
                          island: islandsList![index],
                        ),
                      ),
                      onLongPress: () {
                        islandsList!.removeAt(index);
                        setState(() {});
                      });
                },
                itemCount: islandsList!.length,
              ),
            ),
          ],
        ));
  }
}
