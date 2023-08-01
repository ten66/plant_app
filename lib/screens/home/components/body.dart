import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';
import 'recomend_plants.dart';
import 'featured_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', press: () {}),
          const RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
