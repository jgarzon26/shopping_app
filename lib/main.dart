import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/cart/cart.dart';
import 'package:shopping_app/screens/item/item.dart';
import 'screens/home/home.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: kMainColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    routes: {
      '/': (context) => const Home(),
      '/cart': (context) => const Cart(),
      '/item': (context) => const Item(),
    },
  )
);