import 'package:flutter/material.dart';
import 'package:shopping_app/themeWidgets/sliver_appbar_theme.dart';

class Item extends StatelessWidget{

  const Item({super.key, /*required this.productName*/});

  //final String productName;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppbarTheme(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: "productName",
            actions: [
              IconButton(
                isSelected: true,
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 30,
                ),
                selectedIcon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}