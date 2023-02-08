import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String _itemName;
  final String _itemImage;

  const ItemCard(this._itemName, this._itemImage,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Card(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Text("-50%"),
                  ),
                  Icon(Icons.favorite_border),
                ],
              ),
              Image.asset(
                _itemImage,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              ListTile(
                title: Text(
                  "Product Name",
                ),
                subtitle: Text(
                  "Write description of product here",
                ),
              ),
              Row(
                children: [
                  Text(
                    "\$55",
                  ),
                  Icon(Icons.add_shopping_cart),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}