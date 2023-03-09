import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/demoData/color_list.dart';
import 'package:shopping_app/themeWidgets/rating_button.dart';
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
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.only(right: 4,),
                            onRatingUpdate: (index){},
                            itemBuilder: (context, _) => const Icon(
                              Icons.favorite,
                              color: kMainColor,
                            ),
                          ),
                          Row(
                            children: [
                              const RatingButton(icon: CupertinoIcons.minus,),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  '01',
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: kMainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const RatingButton(icon: CupertinoIcons.plus,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        products[0]['subtitle'],
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: kMainColor,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            'Size: ',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: kMainColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Row(
                            children: List.generate(5, (index) =>
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: const Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    (index + 5).toString(),
                                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: kMainColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            'Color: ',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: kMainColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Row(
                            children: List.generate(5, (index) =>
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: defaultColorList[index],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: const Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                          ),
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