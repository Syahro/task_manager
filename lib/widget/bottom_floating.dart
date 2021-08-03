import 'package:flutter/material.dart';
import 'package:task_manager/theme.dart';
import 'package:task_manager/widget/icon_floating.dart';

class BottomFloating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconFloating(
              imageUrl: 'assets/home.png',
              isActive: true,
            ),
            IconFloating(
              imageUrl: 'assets/task.png',
              isActive: false,
            ),
            IconFloating(
              imageUrl: 'assets/dashboard.png',
              isActive: false,
            ),
            IconFloating(
              imageUrl: 'assets/user.png',
              isActive: false,
            )
          ],
        ),
      ),
    );
  }
}
