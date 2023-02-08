import 'package:flutter/material.dart';
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
                  title: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        border: InputBorder.none,
                      ),
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
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Expanded(
                      child: Text('Categories'),
                    ),

                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}