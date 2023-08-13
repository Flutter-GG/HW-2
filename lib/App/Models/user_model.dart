import 'blog_model.dart';

class User {
  final int userId;
  final String userName;
  final String userEmail;
  final String password;
  final String profileImagePath; 
  final List<Blog> blogsWritten;

  User({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.password,
    required this.profileImagePath,  
    required this.blogsWritten,
  });
}
