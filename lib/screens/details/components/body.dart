import 'package:flutter/material.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ImageAndIcons(size: size),
        const TitleAndPrice(
          title: 'Angelica',
          country: 'Russia',
          price: 440,
        ),
      ],
    );
  }
}
