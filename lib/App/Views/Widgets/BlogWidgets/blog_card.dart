import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Models/blog_model.dart';
import '../../Screens/blog_view.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;

  const BlogCard({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(blog.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 10),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(blog.authorAvatar),
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Text(blog.authorName),
                const Spacer(),
                Text(blog.date),
                const SizedBox(width: 5),
                Text(blog.readingDuration),
              ],
            ),
            const Divider(),
            Text(blog.summary),
            SizedBox(
              width: 344,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0) // Adjust this value to your preference
                        )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BlogView(blog: blog)),
                  );
                },
                child: Text("Read More",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.white, letterSpacing: .5),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
