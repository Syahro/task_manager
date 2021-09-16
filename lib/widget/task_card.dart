import 'package:flutter/material.dart';

import '../theme.dart';

class TaskCard extends StatelessWidget {
  final Color clipIcon;
  final String icon;
  final String title;
  final String subtitle;
  final String timeTask;

  TaskCard({
    this.clipIcon,
    this.icon,
    this.title,
    this.subtitle,
    this.timeTask,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: lightGreyColor.withOpacity(0.1),
            blurRadius: 1,
            spreadRadius: 2,
            offset: Offset(1, 1),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: clipIcon.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Image.asset(
                'assets/$icon',
                width: 17,
                height: 18,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: semiBoldTextStyle.copyWith(
                  fontSize: 14,
                  color: blackColor,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                subtitle,
                style: regularTextStyle.copyWith(
                  fontSize: 11,
                  color: greyColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            timeTask,
            style: regularTextStyle.copyWith(
              fontSize: 11,
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
