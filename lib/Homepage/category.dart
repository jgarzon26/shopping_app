import 'package:flutter/material.dart';

class Category extends StatelessWidget{

  final String _itemName;
  final AssetImage _itemImage;

  const Category(this._itemName, this._itemImage, {super.key});

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: Image(
        image: _itemImage,
      ),
      title: Text(_itemName),
    );
  }
}