import 'package:flutter/material.dart';
import 'package:task_manager/theme.dart';
import 'package:task_manager/widget/bottom_floating.dart';
import 'package:task_manager/widget/bullet_timeline.dart';
import 'package:task_manager/widget/dash_line.dart';
import 'package:task_manager/widget/task_card.dart';
import 'package:task_manager/widget/weekly_timeline.dart';
import 'package:dotted_line/dotted_line.dart';

class DailyTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isTask: true,
        isDashboard: false,
        isuser: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 46),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'My Weekly Task',
                        style: mediumTextStyle.copyWith(
                          fontSize: 20,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WeeklyTimeline('Day 1', '28 June'),
                      WeeklyTimeline('Day 2', '30 June'),
                      WeeklyTimeline('Day 3', '1 July'),
                      Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: greyColor,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.chevron_right,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: greyColor.withOpacity(0.3),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: double.infinity,
                      width: 50,
                      color: orangeColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(
                            top: 25,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BulletTimeline(true),
                              DashLine(110, true),
                              BulletTimeline(false),
                              DashLine(100, false),
                              BulletTimeline(false),
                              DashLine(100, false),
                              BulletTimeline(false),
                              DashLine(100, false),
                              BulletTimeline(false),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Container(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 120,
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
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      right: 15,
                                      top: 15,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color:
                                                    blueColor.withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Center(
                                                child: Image.asset(
                                                  'assets/users.png',
                                                  width: 18,
                                                  height: 16,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Meeting team',
                                              style: semiBoldTextStyle.copyWith(
                                                fontSize: 14,
                                                color: blackColor,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '8.30 AM',
                                              style: regularTextStyle.copyWith(
                                                fontSize: 11,
                                                color: greyColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            text:
                                                '[AIRING SOON] Pizza Crazy Team, online\nmeeting. Prepare yourself and gather ',
                                            style: regularTextStyle.copyWith(
                                              fontSize: 11,
                                              color: greyColor,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'here',
                                                style:
                                                    regularTextStyle.copyWith(
                                                  fontSize: 11,
                                                  color: orangeColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TaskCard(
                                  clipIcon: orangeColor,
                                  icon: 'project.png',
                                  title: 'Clip Project Team',
                                  subtitle: 'Revision & Discuss',
                                  timeTask: '11.00 AM',
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TaskCard(
                                  clipIcon: greenStabiloColor,
                                  icon: 'call.png',
                                  title: 'Client Meeting ',
                                  subtitle: 'Discuss about project',
                                  timeTask: '14.30 PM',
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TaskCard(
                                  clipIcon: purpleColor,
                                  icon: 'update.png',
                                  title: 'Status Update',
                                  subtitle: 'Timeline project',
                                  timeTask: '16.00 PM',
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TaskCard(
                                  clipIcon: orangeColor,
                                  icon: 'call.png',
                                  title: 'Team Dinner',
                                  subtitle: 'Discuss about project',
                                  timeTask: '14.30 PM',
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
