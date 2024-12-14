import 'package:flutter/material.dart';
import 'package:monglish/core/widgets.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final String iconPath;

  const MenuItem({
    super.key,
    required this.text,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: DefaultText(
        text: text,
        color: Colors.white,
      ),
      leading: Image.asset(
        iconPath,
        color: Colors.white,
      ),
    );
  }
}
