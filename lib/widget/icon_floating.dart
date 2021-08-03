import 'package:flutter/material.dart';
import 'package:task_manager/theme.dart';

class IconFloating extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  IconFloating({
    this.imageUrl,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 18,
          height: 18,
          color: isActive ? orangeColor : lightGreyColor,
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 2,
          width: 11.5,
          color: isActive ? orangeColor : Colors.transparent,
        )
      ],
    );
  }
}
