import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final Widget? child;
  const CustomGridView({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 50, mainAxisSpacing: 0.1, crossAxisCount: 2),
        itemCount: 4,
        itemBuilder: (context, index) {
          return child!;
        });
  }
}
