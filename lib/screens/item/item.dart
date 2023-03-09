import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/themeWidgets/sliver_appbar_theme.dart';

import '../../demoData/Product_data.dart';

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
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 16,),
            sliver: SliverToBoxAdapter(
              child: Arc(
                edge: Edge.BOTTOM,
                height: 30,
                child: Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  color: kBGColor,
                  child: Image.asset(
                    products[0]['image'],
                    height: 300,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          products[0]['title'],
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 28,
                            color: kMainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}