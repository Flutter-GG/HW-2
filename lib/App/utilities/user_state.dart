import 'package:flutter/foundation.dart';
import '../Models/user_model.dart';
import '../ViewModels/blog_viewmodel.dart';


class UserState with ChangeNotifier {
 final List<User> _users = [];
    final BlogViewModel blogViewModel = BlogViewModel();
  List<User> get users => _users;

  void addUser(User user) {
    _users.add(user);
    notifyListeners();
  }


User defaultUser = User(
    userId: -1,
    userName: 'No User',
    userEmail: 'no-user@example.com',
    password: 'no-password',
    profileImagePath: '',  
    blogsWritten: [],
);

User findUserByEmail(String email) {
  return _users.firstWhere((user) => user.userEmail == email, orElse: () => defaultUser);
}

}
