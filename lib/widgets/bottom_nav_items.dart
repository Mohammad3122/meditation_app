import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants/constants.dart';

class BuildBottomNavItems extends StatelessWidget {
  final String svgPic;
  final String title;
  final VoidCallback? press;
  final bool isActive;

  const BuildBottomNavItems({
    super.key,
    required this.svgPic,
    required this.title,
    required this.isActive,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgPic),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'vazir',
              fontSize: 13,
              color: isActive ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
