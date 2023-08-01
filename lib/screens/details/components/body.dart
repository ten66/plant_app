import 'package:flutter/material.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ImageAndIcons(size: size),
      ],
    );
  }
}
