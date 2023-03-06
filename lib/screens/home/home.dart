import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/demoData/category_data.dart';
import 'package:shopping_app/screens/home/widgets/categories.dart';
import 'package:shopping_app/screens/home/widgets/search_bar.dart';
import 'package:shopping_app/screens/home/widgets/section_title.dart';

import '../../demoData/Product_data.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            sliver: SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leadingWidth: 40,
              leading: IconButton(
                icon: const Icon(
                  Icons.sort,
                  color: kMainColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
              title: Text(
                  "DP Shop",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 23,
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                  ),
              ),
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
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(top: 15,),
              decoration: const BoxDecoration(
                color: kBGColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchBar(),
                  const SectionTitle(title: 'Categories',),
                  SingleChildScrollView(
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
                    crossAxisCount: 2,
                    childAspectRatio: 0.68,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 0,),
                    children: [
                      Container(
                        height: 200,
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 5,),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: kMainColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    '-${products[0]['discount']}%',
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Image.asset(
                                  products[0]['image']!,
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(bottom: 8),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${products[0]['title']}',
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: kMainColor,
                                ),
                              ),
                            ),
                            Text(
                              '${products[0]['subtitle']}',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                fontSize: 15,
                                color: kMainColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$${products[0]['price']}',
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: kMainColor,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.shopping_cart_checkout,
                                    color: kMainColor,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





