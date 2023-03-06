import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

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
              height: 500,
              padding: const EdgeInsets.only(top: 15,),
              decoration: const BoxDecoration(
                color: kBGColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}