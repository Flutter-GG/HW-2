import 'dart:async';
import '../Models/result_model.dart';
import '../Models/user_model.dart';
import 'package:image_picker/image_picker.dart';

class UserViewModel {
  final users = <User>[];

  String userName = '';
  String userEmail = '';
  String userPassword = '';
  String confirmPassword = '';
  XFile? profileImage;

  final _imageStreamController = StreamController<XFile?>.broadcast();
  Stream<XFile?> get imageStream => _imageStreamController.stream;

  final ImagePicker _imagePicker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);
    profileImage = image;
    _imageStreamController.add(image);
  }

  bool isValidEmail(String email) {
    final regex = RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
    return regex.hasMatch(email);
  }

  int? getUserIndexByEmail(String email) {
    for (int i = 0; i < users.length; i++) {
      if (users[i].userEmail == email) {
        return i;
      }
    }
    return null;
  }

  int generateUserId() {
    return users.length;
  }

  Result registerUser({
    required String userName,
    required String userEmail,
    required String password,
    required String confirmPassword,
    required String profileImagePath,
  }) {
    if (userName.isEmpty) {
      return Result(isSuccess: false, errorMessage: "Name cannot be empty");
    }

    if (!isValidEmail(userEmail)) {
      return Result(isSuccess: false, errorMessage: "Invalid email format");
    }

    if (getUserIndexByEmail(userEmail) != null) {
      return Result(isSuccess: false, errorMessage: "User with this email already exists");
    }

    if (password.isEmpty || password.length < 8) {
      return Result(isSuccess: false, errorMessage: "Password must be at least 8 characters long");
    }

    if (password != confirmPassword) {
      return Result(isSuccess: false, errorMessage: "Passwords do not match");
    }

    final newUser = User(
      userId: generateUserId(),
      userName: userName,
      userEmail: userEmail,
      password: password,
      profileImagePath: profileImagePath,
      blogsWritten: [],
    );

    users.add(newUser);
    return Result(isSuccess: true);
  }

  Result handleRegistration() {
    final result = registerUser(
      userName: userName,
      userEmail: userEmail,
      password: userPassword,
      confirmPassword: confirmPassword,
      profileImagePath: profileImage?.path ?? '',
    );

    return result;
  }

  void dispose() {
    _imageStreamController.close();
  }
  
  bool authenticateUser(String email, String password) {
  int? userIndex = getUserIndexByEmail(email);
  
  if (userIndex == null) return false;
  
  User user = users[userIndex];
  
  return user.password == password;
}

}


