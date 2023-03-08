import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class SliverAppbarTheme extends StatelessWidget{
  const SliverAppbarTheme({super.key, required this.leading, required this.title, required this.actions, });

  final Widget leading;
  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      sliver: SliverAppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 40,
        leading: leading,
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: 23,
            color: kMainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ...actions,
        ],
      ),
    );
  }
}