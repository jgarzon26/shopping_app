import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key, required this.name, required this.image, required this.onTap,
  }) : super(key: key);

  final String name, image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 40,
              height: 40,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kMainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}