import 'package:flutter/foundation.dart';
import '../Models/user_model.dart';

class UserState with ChangeNotifier {
  final List<User> _users = [];

  User? _currentUser;

  List<User> get users => _users;
  User? get currentUser => _currentUser;

  void setCurrentUser(User user) {
    _currentUser = user;
    notifyListeners();
  }

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
    return _users.firstWhere((user) => user.userEmail == email,
        orElse: () => defaultUser);
  }
}
