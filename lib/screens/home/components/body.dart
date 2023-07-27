import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It will provie us total height and width of our screen
    // スクリーンの高さと幅の合計が表示される
    Size size = MediaQuery.of(context).size;
    return Column(
      // <Widget>はつけなくてもいいのかも
      // children: <Widget>[]
      // It will cover 20% of our total height
      // 全体の高さの20％をカバーする
      children: [
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                // -27はあくまで微調整
                height: size.height * 0.2 - 27,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
