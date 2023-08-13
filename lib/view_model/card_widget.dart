import 'package:best_places/View/Screens/book_mark_screen.dart';
import 'package:best_places/View/Screens/home_screen.dart';
import 'package:best_places/View/Screens/show_detailes_screen.dart';
import 'package:best_places/View/Screens/update.dart';
import 'package:best_places/View/widget/extinsions.dart';
import 'package:best_places/View/widget/spaces.dart';
import 'package:best_places/view_model/islands_model.dart';
import 'package:flutter/material.dart';

bool _hasBeenPressed = false;

class CardWidget extends StatefulWidget {
  CardWidget({
    super.key,
    required this.island,
  });

  final Islands island;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => context.pushPage(
                screen: Show(
              island: widget.island,
            )),
        child: SizedBox(
            height: 40,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(8),
              elevation: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipOval(
                            child: Image.network(
                              widget.island.person!,
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Space.spaceW8,
                          Text(
                            widget.island.name!,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 135, 133, 133)),
                          )
                        ],
                      ),
                      Text(
                        overflow: TextOverflow.fade,
                        widget.island.title!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 250,
                            child: Text(
                              overflow: TextOverflow.fade,
                              widget.island.subtitle!,
                              style: const TextStyle(
                                  fontSize: 20, overflow: TextOverflow.clip),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                widget.island.thumbnail!,
                                height: 90,
                                width: 90,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Space.spaceH32,
                      Row(children: [
                        IconButton(
                          onPressed: () {
                            islandsList!.add(widget.island);
                            setState(() {
                              _hasBeenPressed = !_hasBeenPressed;
                            });
                          },
                          icon: const Icon(
                            Icons.bookmark_add_outlined,
                            size: 25.0,
                          ),
                          color: _hasBeenPressed ? Colors.blue : Colors.black,
                          // 3
                        ),
                        IconButton(
                          onPressed: () => context
                              .pushPage(
                                  screen:
                                      UpdatePlace(updateIsland: widget.island))
                              .then(
                            (value) {
                              if (value == "update") {
                                context
                                    .findAncestorStateOfType<HomeState>()
                                    ?.setState(() {});
                              }
                            },
                          ),
                          icon: const Icon(
                            Icons.edit_note_rounded,
                            size: 25.0,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            )));
  }
}
