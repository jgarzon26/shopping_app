import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/cart/widgets/cart_item.dart';
import 'package:shopping_app/themeWidgets/sliver_appbar_theme.dart';
import 'package:shopping_app/themeWidgets/sliver_body_background_theme.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            title: "Cart",
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: kMainColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SliverBodyBackgroundTheme(
            child: Column(
              children: [
                CartItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
