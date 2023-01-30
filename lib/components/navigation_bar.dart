import 'package:flutter/material.dart';
import 'package:oumi/components/navigation_item.dart';
import 'package:oumi/routes/routes.dart';

class NavigationBarWeb extends StatefulWidget {
  const NavigationBarWeb({Key? key}) : super(key: key);

  @override
  State<NavigationBarWeb> createState() => _NavigationBarWebState();
}

class _NavigationBarWebState extends State<NavigationBarWeb> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.only(left: 32.0),
                  child: Text(
                    "OUMI",
                    style: TextStyle(fontSize: 24.0),
                  ))),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                NavigationItem(
                  selected: index == 0,
                  title: 'Home',
                  routeName: routeHome,
                  onHighlight: onHighlight,
                ),
                NavigationItem(
                  selected: index == 1,
                  title: 'About',
                  routeName: routeAbout,
                  onHighlight: onHighlight,
                ),
                NavigationItem(
                  selected: index == 2,
                  title: 'Contact',
                  routeName: routeContacts,
                  onHighlight: onHighlight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeHome:
        changeHighlight(0);
        break;
      case routeAbout:
        changeHighlight(1);
        break;
      case routeContacts:
        changeHighlight(2);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
