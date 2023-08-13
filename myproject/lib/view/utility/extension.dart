import 'package:flutter/material.dart';

extension Num on BuildContext {
  gitpush(StatefulWidget a) {
    return Navigator.push(this, MaterialPageRoute(builder: (context) => a));
  }

  textfield(TextEditingController a) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: a,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            border: const OutlineInputBorder(),
            hintText: "enter id"),
      ),
    );
  }
  
}
