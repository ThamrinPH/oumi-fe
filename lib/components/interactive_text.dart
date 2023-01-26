import 'package:flutter/material.dart';
import 'package:oumi/constants.dart';

class InteractiveText extends StatefulWidget {
  final String text;
  final bool selected;

  const InteractiveText({required this.text, required this.selected});

  @override
  InteractiveTextState createState() => InteractiveTextState();
}

class InteractiveTextState extends State<InteractiveText> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => _hovered(true),
      onExit: (_) => _hovered(false),
      child: Text(widget.text,
          style: _hovering
              ? kPageTitleStyle.copyWith(
                  color: Colors.indigo, decoration: TextDecoration.underline)
              : (widget.selected)
                  ? kPageTitleStyle.copyWith(color: Colors.red)
                  : kPageTitleStyle),
    );
  }

  _hovered(bool hovered) {
    setState(() {
      _hovering = hovered;
    });
  }
}
