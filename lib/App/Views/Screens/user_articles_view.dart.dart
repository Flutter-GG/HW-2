import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Models/blog_model.dart';
import '../../utilities/user_state.dart';
class UserArticlesView extends StatelessWidget {
  const UserArticlesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UserState>(
        builder: (context, userState, child) {
          List<Blog> userBlogs = userState.currentUser?.blogsWritten ?? [];

          return (userBlogs.isNotEmpty)
              ? ListView.builder(
                  itemCount: userBlogs.length,
                  itemBuilder: (context, index) {
                    final blog = userBlogs[index];
                    return ListTile(
                      title: Text(blog.title),
                      subtitle: Text(blog.summary),
                      onTap: () {
                        // Handle blog tap, maybe navigate to the full blog view
                      },
                    );
                  },
                )
              : const Center(child: Text("You haven't written any blogs yet."));
        },
      ),
    );
  }
}
