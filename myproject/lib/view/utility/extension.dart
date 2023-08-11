import 'package:flutter/material.dart';

extension num on BuildContext {
  gitpush(StatefulWidget a) {
    return Navigator.push(this, MaterialPageRoute(builder: (context) => a));
  }

  Textfield(TextEditingController a) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: a,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            border: OutlineInputBorder(),
            hintText: "enter id"),
      ),
    );
  }
  
}
