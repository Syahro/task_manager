import 'package:flutter/material.dart';

import '../theme.dart';

class BulletTimeline extends StatelessWidget {
  final bool isPass;

  BulletTimeline(this.isPass);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: isPass ? orangeColor : Colors.transparent,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: isPass ? orangeColor : greyColor),
      ),
    );
  }
}
