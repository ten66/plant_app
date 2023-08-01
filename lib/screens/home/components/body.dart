import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';
import 'recomend_plants.dart';
import 'featured_plants.dart';

// import 'package:plant_app/constants.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It will provie us total height and width of our screen
    // スクリーンの高さと幅の合計が表示される
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    // 小さな端末でもスクロールが可能になる
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', press: () {}),
          // it will cover 40% of our total width
          // 全幅の40％をカバーする
          const RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
