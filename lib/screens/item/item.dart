import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/themeWidgets/sliver_appbar_theme.dart';

class Item extends StatefulWidget{

  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppbarTheme(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: kMainColor,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: "Product",
            actions: [
              IconButton(
                icon: Icon(
                  !isFavorite ? Icons.favorite_border : Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
                onPressed: () {
                    setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}