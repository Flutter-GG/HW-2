import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Models/blog_model.dart';
import '../../ViewModels/blog_viewmodel.dart';
import '../Widgets/BlogWidgets/blog_card.dart';

class BlogsListView extends StatelessWidget {
  const BlogsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<BlogViewModel>(
          builder: (context, blogViewModel, child) {
            return ListView.builder(
              itemCount: blogViewModel.blogs.length,
              itemBuilder: (context, index) {
                Blog blog = blogViewModel.blogs[index];
                return BlogCard(blog: blog);
              },
            );
          },
        ),
      ),
    );
  }
}
