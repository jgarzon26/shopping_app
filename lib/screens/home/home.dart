import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/demoData/category_data.dart';
import 'package:shopping_app/screens/home/widgets/categories.dart';
import 'package:shopping_app/screens/home/widgets/item_card.dart';
import 'package:shopping_app/screens/home/widgets/search_bar.dart';
import 'package:shopping_app/screens/home/widgets/section_title.dart';
import 'package:shopping_app/themeWidgets/sliver_appbar_theme.dart';
import 'package:shopping_app/themeWidgets/sliver_body_background_theme.dart';

import '../../demoData/Product_data.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const PageScrollPhysics(),
        slivers: [
          SliverAppbarTheme(
              leading: IconButton(
                icon: const Icon(
                  Icons.sort,
                  color: kMainColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
              title: "DP Shop",
              actions: [
                Badge(
                  badgeContent: Text(
                    "3",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  badgeStyle: const BadgeStyle(
                    padding: EdgeInsets.all(7),
                  ),
                  position: BadgePosition.topEnd(top: 0, end: 0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      color: kMainColor,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/cart');
                    },
                  ),
                ),
              ],
          ),
          SliverToBoxAdapter(
            child: SliverBodyBackgroundTheme(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchBar(),
                  const SectionTitle(title: 'Categories',),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        category.length,
                            (index) => Categories(
                          name: category[index]['name']!,
                          image: category[index]['image']!,
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                  const SectionTitle(title: 'Best Selling'),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    childAspectRatio: 0.68,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 0,),
                    children: List.generate(
                      products.length, (index) => ItemCard(
                      title: products[index]['title']!,
                      subtitle: products[index]['subtitle']!,
                      price: products[index]['price']!,
                      discount: products[index]['discount']!,
                      image: products[index]['image']!,
                      onTap: () {},
                     ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        onTap: (index) {
          //Handle button tap
        },
        color: kMainColor,
        backgroundColor: Colors.transparent,
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}







