import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class SliverBodyBackgroundTheme extends StatelessWidget {
  const SliverBodyBackgroundTheme({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(top: 15, bottom: 20),
        decoration: const BoxDecoration(
          color: kBGColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: child,
      ),
    );
  }
}