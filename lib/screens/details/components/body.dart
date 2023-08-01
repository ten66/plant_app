import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'buynow_and_description_btn.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(title: 'Angelica', country: 'Russia', price: 440),
          const SizedBox(height: kDefaultPadding),
          BuyNowAndDescriptionBtn(size: size),
        ],
      ),
    );
  }
}
