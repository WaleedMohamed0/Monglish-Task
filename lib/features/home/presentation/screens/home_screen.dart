import 'package:flutter/material.dart';
import 'package:monglish/features/home/presentation/widgets/header/header_container.dart';
import 'package:monglish/features/home/presentation/widgets/home_body_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        HeaderContainer(),
        HomeBodyContent(),
      ],
    );
  }
}
