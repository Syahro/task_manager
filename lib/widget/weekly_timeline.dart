import 'package:flutter/material.dart';

import '../theme.dart';

class WeeklyTimeline extends StatelessWidget {
  final String title;
  final String subTitle;

  WeeklyTimeline(
    this.title,
    this.subTitle,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: semiBoldTextStyle.copyWith(
            fontSize: 14,
            color: blackColor,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          subTitle,
          style: regularTextStyle.copyWith(
            fontSize: 13,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
