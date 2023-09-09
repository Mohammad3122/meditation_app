import 'package:flutter/material.dart';
import 'package:meditation_app/widgets/bottom_nav_items.dart';

class BuildBottomnavBar extends StatelessWidget {
  const BuildBottomnavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      height: 80.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildBottomNavItems(
            svgPic: 'assets/icons/calendar.svg',
            title: 'امروز',
            isActive: false,
            press: () {},
          ),
          BuildBottomNavItems(
            svgPic: 'assets/icons/gym.svg',
            title: 'تمرینات',
            isActive: false,
            press: () {},
          ),
          BuildBottomNavItems(
            svgPic: 'assets/icons/Settings.svg',
            title: 'تنظیمات',
            isActive: false,
            press: () {},
          ),
        ],
      ),
    );
  }
}
