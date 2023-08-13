import 'package:flutter/foundation.dart';
import 'signup_viewmodel.dart';

class AuthViewModel with ChangeNotifier {
  final UserViewModel _userViewModel = UserViewModel();

  Future<bool> login(String email, String password) async {
    return _userViewModel.authenticateUser(email, password);
  }
}
