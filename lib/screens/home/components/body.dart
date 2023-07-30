import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              // Positioned Widget - Stackの中でWidgetを配置する
              // https://www.youtube.com/watch?v=EgtPleVwxBQ
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  // Searchテキストを中央に
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        // 影の位置？
                        offset: const Offset(0, 5),
                        // 影のぼかし
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            // suffix isn't working properly with SVG
                            // thats why we use row
                            // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/icons/search.svg"),
                    ],
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
