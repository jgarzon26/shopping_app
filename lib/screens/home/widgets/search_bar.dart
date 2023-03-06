import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 15,),
        title: TextFormField(
          decoration: const InputDecoration(
            hintText: "Search here...",
            border: InputBorder.none,
          ),
        ),
        trailing: const Icon(
          Icons.camera_alt,
          color: kMainColor,
          size: 27,
        ),
      ),
    );
  }
}