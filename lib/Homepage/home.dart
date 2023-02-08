import 'package:flutter/material.dart';
import 'package:shopping_app/Homepage/item_card.dart';
import 'category_data.dart';
import 'category.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('DP Shop'),
            actions: [
              Icon(Icons.shopping_bag_outlined),
            ],
          ),
          //SEARCH BAR
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                return const ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search here...',
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(Icons.camera_alt),
                );
              },
              childCount: 1,
            ),
          ),
          //CATEGORIES
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Text('Categories'),
                ItemCard(categoryData[0]['name']!, categoryData[0]['image']!),
              ]
            )
          ),

        ],
      ),
    );
  }
}