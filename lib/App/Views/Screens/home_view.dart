import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utilities/user_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = Provider.of<UserState>(context).users;

    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user.userName),
            subtitle: Text(user.userEmail),
          );
        },
      ),
    );
  }
}
