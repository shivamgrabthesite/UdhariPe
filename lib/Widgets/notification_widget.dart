// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/notification_screen.dart';
import 'package:iconsax/iconsax.dart';

import '../Constants/colors.dart';

class NotificationWidget extends StatefulWidget {
  int? count;
  bool? badge;
  NotificationWidget({
    Key? key,
    this.count,
    required this.badge,
  }) : super(key: key);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotificationScreen(),
          )),
      child: badges.Badge(
        badgeContent: Text(
          widget.count.toString(),
          style: TextStyle(color: Colors.white),
        ),
        showBadge: widget.badge!,
        position: badges.BadgePosition.custom(end: 2, bottom: 8),
        badgeStyle:
            badges.BadgeStyle(badgeGradient: badges.BadgeGradient.linear(colors: mixPurpleColor)),
        child: Icon(
          Iconsax.notification,
          size: 30,
        ),
      ),
    );
  }
}
