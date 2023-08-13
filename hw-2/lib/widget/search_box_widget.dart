import 'package:flutter/material.dart';
import 'package:hw_2/utils/colors_app.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({
    super.key,
    this.onChanged,
  });

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: ' ',
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(
          Icons.search,
          color: ColorsApp.blackColor,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
      ),
    );
  }
}
