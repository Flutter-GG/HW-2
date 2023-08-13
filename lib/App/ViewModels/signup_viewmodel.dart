import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/result_model.dart';
import '../Models/user_model.dart';
import 'package:image_picker/image_picker.dart';
import '../utilities/user_state.dart';

class UserViewModel {
  final List<User> users = [];

  String userName = '';
  String userEmail = '';
  String userPassword = '';
  String confirmPassword = '';

  final _imageStreamController = StreamController<XFile?>.broadcast();
  Stream<XFile?> get imageStream => _imageStreamController.stream;

  final ImagePicker _imagePicker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    _imageStreamController.add(image);
  }

  bool isValidEmail(String email) {
    final regex = RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
    return regex.hasMatch(email);
  }

  int getUserIndexByEmail(String email) {
    return users.indexWhere((user) => user.userEmail == email);
  }

  Result handleRegistration(BuildContext context) {
    final user = User(
      userId: DateTime.now().millisecondsSinceEpoch,
      userName: userName,
      userEmail: userEmail,
      password: userPassword,
      profileImagePath: "",
      blogsWritten: [],
    );

    Provider.of<UserState>(context, listen: false).addUser(user);
    return Result(isSuccess: true);
  }

  bool authenticateUser(String email, String password) {
    final userIndex = getUserIndexByEmail(email);
    if (userIndex == -1) return false;
    return users[userIndex].password == password;
  }

  void dispose() {
    _imageStreamController.close();
  }
}
