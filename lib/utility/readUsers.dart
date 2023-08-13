    import 'package:hw2/data/global_data.dart';
import 'package:hw2/data/user_data.dart';
import 'package:hw2/data/user_model.dart';

readUserInformation(){
  for (var element in userData["users"]) {
      listUsers.add(User.fromJson(element));
    }
}