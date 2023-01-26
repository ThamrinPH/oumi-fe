import 'package:flutter/material.dart';
import 'package:oumi/routes/routes.dart';
import 'package:oumi/components/interactive_nav_item.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function(String) onHighlight;

  const NavigationItem({
    required this.title,
    required this.routeName,
    required this.selected,
    required this.onHighlight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navKey.currentState?.pushNamed(routeName);
        // Navigator.pushNamed(context, routeName);
        onHighlight(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: selected,
        ),
      ),
    );
  }
}
