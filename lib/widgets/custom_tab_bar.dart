import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone_ui/config/pallete.dart';

class CustomTabBar extends StatelessWidget{
  final List<IconData> icon;
  final int selectedIndex;
  final Function(int) onTap;

    const CustomTabBar({
    Key? key,
    required this.icon,
    required this.selectedIndex,
    required this.onTap
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Palette.facebookBlue,
            width: 3.0,
          )
        )
      ),
      tabs: icon.asMap()
          .map((i,e) => MapEntry(i , Tab(icon: Icon(e,
      color: i==selectedIndex ? Palette.facebookBlue : Colors.black45,
        size: 30.0,
      )
      )
      ),).values
          .toList(),
        onTap: onTap,

    );
  }
}