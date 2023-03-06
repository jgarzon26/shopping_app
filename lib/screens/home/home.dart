import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/demoData/category_data.dart';
import 'package:shopping_app/screens/home/widgets/categories.dart';

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15,),
                      title: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search here...",
                          border: InputBorder.none,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.camera_alt,
                        color: kMainColor,
                        size: 27,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Categories",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kMainColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

