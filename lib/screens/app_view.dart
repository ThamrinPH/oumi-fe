import 'package:flutter/material.dart';
import 'package:oumi/components/navigation_bar.dart';

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({required this.child});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          NavigationBarWeb(),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}
