import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/cart/widgets/cart_item.dart';
import 'package:shopping_app/themeWidgets/sliver_appbar_theme.dart';
import 'package:shopping_app/themeWidgets/sliver_body_background_theme.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            title: "Cart",
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: kMainColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SliverFillRemaining(
            child: SliverBodyBackgroundTheme(
              child: Column(
                children: [
                  CartItem(),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Add Coupon Code",
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: kMainColor,
                              fontWeight: FontWeight.bold,
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
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: kMainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "\$250",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: kMainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: kMainColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                onPressed: (){},
                child: const Text(
                  "Check Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
