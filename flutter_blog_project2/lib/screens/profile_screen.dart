import 'package:flutter/material.dart';
import 'package:flutter_blog_project2/components/appbar_widget.dart';
import 'package:flutter_blog_project2/components/bottom_nav.dart';
import 'package:flutter_blog_project2/components/image_widget.dart';
import 'package:flutter_blog_project2/components/post_card.dart';
import 'package:flutter_blog_project2/constants/colors.dart';
import 'package:flutter_blog_project2/constants/spaces.dart';
import 'package:flutter_blog_project2/data_related_files/data_model.dart';
import 'package:flutter_blog_project2/extentions/sizes.dart';
import 'package:flutter_blog_project2/main.dart';
import 'package:flutter_blog_project2/screens/update_post.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final List allPosts = getListPosts(specficUserPosts);
  final BlogModel userInfo = getUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Profile'),
      body: Column(
        children: [
          Container(
            width: context.getWidth(),
            height: context.getHeight() / 4,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'UserId: ${userInfo.userId}',
                    style: TextStyle(color: AppColors.primary, fontSize: 15),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        child: ImageWidget(imgPath: userInfo.avatarImg),
                      ),
                      Spaces.spaceW5,
                      Text(
                        userInfo.authorName,
                        style:
                            TextStyle(color: AppColors.primary, fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          ListView.builder(
              itemCount: allPosts.length,
              itemBuilder: (BuildContext context, int index) {
                return PostCard(
                  iconFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              UpdateScreen(post: allPosts[index]),
                        ));
                  },
                  buttonIcon: Icons.edit,
                  post: allPosts[index],
                );
              }),
        ],
      ),
      bottomNavigationBar: BottomNavBar(index: 3),
    );
  }
}

//functions to help me get the necessry information
getUser() {
  BlogModel specficUser = blogList[0];
  for (var object in blogList) {
    if (userId == object.userId) {
      specficUser = object;
    }
  }
  return specficUser;
}

getListPosts(List<BlogModel> list) {
  for (var object in blogList) {
    if (userId == object.userId) {
      list.add(object);
    }
  }
}
