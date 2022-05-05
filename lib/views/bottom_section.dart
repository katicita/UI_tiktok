import 'package:flutter/material.dart';

import '../tik_tok_icons.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);
  static const double NavigationIconSize = 20.0;
  static const double CreateButtonWidth = 38.0;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Icon(TikTokIcons.home, color: Colors.white, size: NavigationIconSize),
      Icon(TikTokIcons.search, color: Colors.white, size: NavigationIconSize),
      customCreateIcon(),
      Icon(TikTokIcons.messages, color: Colors.white, size: NavigationIconSize),
      Icon(TikTokIcons.profile, color: Colors.white, size: NavigationIconSize)
    ]);
  }

  Widget customCreateIcon() {
    return Container(
      height: 27,
      width: 45,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            width: CreateButtonWidth,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 45, 108),
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: CreateButtonWidth,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 32, 211, 234),
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          Center(
            child: Container(
              height: double.infinity,
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.white,
              ),
              child: Icon(Icons.add, size: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
