import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key, required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: kMainColor,
        ),
      ),
    );
  }
}