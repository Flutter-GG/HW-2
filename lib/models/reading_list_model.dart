import 'package:flutter_application_1/models/users_models.dart';

class ReadingListModel {
  List<UsersModel> readingItems = [];

  void addToReadlist(UsersModel post) {
  
      readingItems.add(post);

  }

void removeFromReadlist(UsersModel post) {
  readingItems.removeWhere((item) => item.id == post.id);
}

}

final gReadListModel = ReadingListModel();