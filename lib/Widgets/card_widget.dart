import 'package:flutter/material.dart';
import 'package:project2_flutter_bootcamp/Utils/extensions.dart';
import '../Model/blog_data_model.dart';
import '../Screens/blog_page.dart';
import '../Screens/edit_screen.dart';
import '../main.dart';

class CardWidget extends StatefulWidget {
  const CardWidget(
      {super.key, required this.blogDataModel, this.isSaved = false});
  final BlogDataModel blogDataModel;
  final bool isSaved;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool _isSaved = false;

  @override
  void initState() {
    super.initState();
    _isSaved = widget.isSaved;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BlogPage(
                    blogDataModel: widget.blogDataModel,
                  ))),
      child: SizedBox(
        height: context.getHeight - 590,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          NetworkImage(widget.blogDataModel.authorImage),
                    ),
                    SizedBox(width: 10),
                    Text(
                      widget.blogDataModel.author,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.blogDataModel.image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    widget.blogDataModel.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    widget.blogDataModel.dateBlog,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isSaved = !_isSaved;
                          if (_isSaved) {
                            listBlogSave?.add(widget.blogDataModel);
                          } else {
                            listBlogSave?.remove(widget.blogDataModel);
                          }
                        });
                      },
                      icon: Icon(
                        _isSaved ? Icons.bookmark : Icons.bookmark_border,
                      ),
                      iconSize: 25,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditScreen(
                              blogDataModel: widget.blogDataModel,
                            ),
                          ),
                        );
                      },
                      icon: Icon(Icons.edit),
                      iconSize: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
