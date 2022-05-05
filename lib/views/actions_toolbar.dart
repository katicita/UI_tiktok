import 'dart:math' as math;

import 'package:flutter/material.dart';
import '../tik_tok_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ActionsToolbar extends StatefulWidget {
  const ActionsToolbar({Key? key}) : super(key: key);

// Full dimensions of an action
  static const double ActionWidgetSize = 60.0;

// The size of the icon showen for Social Actions
  static const double ActionIconSize = 35.0;

// The size of the share social icon
  static const double ShareActionIconSize = 25.0;

// The size of the profile image in the follow Action
  static const double ProfileImageSize = 50.0;

// The size of the plus icon under the profile image in follow action
  static const double PlusIconSize = 20.0;

  @override
  State<ActionsToolbar> createState() => _ActionsToolbarState();
}

class _ActionsToolbarState extends State<ActionsToolbar>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  static String pictureUrl =
      'https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7';

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    animationController.repeat();

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      // color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getFollowAction(pictureUrl: pictureUrl),
          _getSocialAction(icon: TikTokIcons.heart, text: "3.2m"),
          _getSocialAction(icon: TikTokIcons.chat_bubble, text: '16.4k'),
          _getSocialAction(icon: TikTokIcons.reply, text: 'Share'),
          _animationRotate(pictureUrl: pictureUrl),
        ],
      ),
    );
  }

  Widget _getSocialAction({
    required String text,
    required IconData icon,
    bool isShare = false,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      height: ActionsToolbar.ActionWidgetSize,
      width: ActionsToolbar.ActionWidgetSize,
      child: Column(
        children: [
          Icon(icon,
              size: isShare
                  ? ActionsToolbar.ShareActionIconSize
                  : ActionsToolbar.ActionIconSize,
              color: Colors.grey[300]),
          Padding(
            padding: EdgeInsets.only(top: isShare ? 5.0 : 2.0),
            child:
                Text(text, style: TextStyle(fontSize: isShare ? 10.0 : 12.0)),
          ),
        ],
      ),
    );
  }

  Widget _getFollowAction({required String pictureUrl}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: ActionsToolbar.ActionWidgetSize,
      width: ActionsToolbar.ActionWidgetSize,
      child: Stack(
        children: [_getProfilePicture(pictureUrl), _getPlusIcon()],
      ),
    );
  }

  ///xMiddlePosition = (ParentWidth / 2) -(ChildWidth / 2);
  Widget _getProfilePicture(String pictureUrl) {
    return Positioned(
        left: (ActionsToolbar.ActionWidgetSize / 2) -
            (ActionsToolbar.ProfileImageSize / 2),
        child: Container(
          padding: EdgeInsets.all(1.0),
          height: ActionsToolbar.ProfileImageSize,
          width: ActionsToolbar.ProfileImageSize,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(ActionsToolbar.ProfileImageSize / 2),
          ),
          child: CachedNetworkImage(
            imageUrl: pictureUrl,
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
        ));
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((ActionsToolbar.ActionWidgetSize / 2) -
          (ActionsToolbar.PlusIconSize / 2)),
      child: Container(
        height: ActionsToolbar.PlusIconSize,
        width: ActionsToolbar.PlusIconSize,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 43, 84),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Icon(Icons.add, size: 20.0, color: Colors.white),
      ),
    );
  }

  LinearGradient get musicGradient => LinearGradient(colors: [
        Colors.grey[800]!,
        Colors.grey[900]!,
        Colors.grey[900]!,
        Colors.grey[800]!,
      ], stops: [
        0.0,
        0.4,
        0.6,
        1.0,
      ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  Widget _animationRotate({required String pictureUrl}) {
    return AnimatedBuilder(
      animation: animationController,
      child: _getMusicPlayer(pictureUrl: pictureUrl),
      builder: (_, _widget) {
        return Transform.rotate(
          alignment: Alignment.center,
          angle: animationController.value * 2 * math.pi,
          child: _widget,
        );
      },
    );
  }

  Widget _getMusicPlayer({required String pictureUrl}) {
    return Container(
      padding: EdgeInsets.all(11.0),
      height: ActionsToolbar.ProfileImageSize,
      width: ActionsToolbar.ProfileImageSize,
      decoration: BoxDecoration(
          gradient: musicGradient,
          borderRadius:
              BorderRadius.circular(ActionsToolbar.ProfileImageSize / 2)),
      child: CachedNetworkImage(
        imageUrl: pictureUrl,
        placeholder: (context, url) => new CircularProgressIndicator(),
        errorWidget: (context, url, error) => new Icon(Icons.error),
      ),
    );
  }
}
