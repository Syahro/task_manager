import 'package:flutter/material.dart';
import 'package:task_manager/theme.dart';

class StatisticInfo extends StatelessWidget {
  final String title;
  final int countTask;
  final Color linearStart;
  final Color linearend;

  StatisticInfo({
    this.title,
    this.countTask,
    this.linearStart,
    this.linearend,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                linearStart,
                linearend,
              ],
            ),
          ),
        ),
        SizedBox(
          width: 13,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: mediumTextStyle.copyWith(
                fontSize: 13,
                color: lightBlackColor,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              '$countTask task completed',
              style: regularTextStyle.copyWith(
                fontSize: 11,
                color: greyColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
