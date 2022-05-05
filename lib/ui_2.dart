import 'package:flutter/material.dart';
import 'package:tiktok_ui/views/actions_toolbar.dart';
import 'package:tiktok_ui/views/bottom_section.dart';
import 'package:tiktok_ui/views/video_description.dart';

class MainScreen2 extends StatelessWidget {
  const MainScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            _topSection,
            _middleSection,
            BottomSection(),
          ],
        ),
      ),
    );
  }

  Widget get _topSection => Container(
        height: 100,
        padding: const EdgeInsets.only(bottom: 15),
        alignment: const Alignment(0.0, 1.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Following'),
            SizedBox(width: 15),
            Text(
              'For you',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  Widget get _middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            VideoDescription(),
            ActionsToolbar(),
          ],
        ),
      );
}
