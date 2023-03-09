import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/demoData/Product_data.dart';

import '../../../themeWidgets/rating_button.dart';

class CartItem extends StatelessWidget{
  const CartItem({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      height: 110,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Radio(
            value: "",
            groupValue: "",
            onChanged: (index) {},
            activeColor: kMainColor,
          ),
          Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.only(right: 15),
            child: Image.asset(
              products[0]['image']!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  products[0]['title']!,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
                Text(
                  "\$${products[0]['price']}",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                Row(
                  children: [
                    const RatingButton(
                      icon: CupertinoIcons.plus,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '01',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kMainColor,
                        )
                      ),
                    ),
                    const RatingButton(
                      icon: CupertinoIcons.minus,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

