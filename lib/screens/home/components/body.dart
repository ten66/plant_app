import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:plant_app/constants.dart';

import 'header_with_searchbox.dart';

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
        ],
      ),
    );
  }
}
