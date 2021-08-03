import 'package:flutter/material.dart';
import 'package:task_manager/theme.dart';
import 'package:task_manager/widget/bottom_floating.dart';
import 'package:task_manager/widget/statistic_info.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      floatingActionButton: BottomFloating(
        isHome: false,
        isTask: false,
        isDashboard: true,
        isuser: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 46,
            ),
            Padding(
              padding: EdgeInsets.only(left: 21),
              child: Text(
                'Dashboard',
                style: mediumTextStyle.copyWith(
                  fontSize: 20,
                  color: lightBlackColor,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Global Statistic',
                          style: mediumTextStyle.copyWith(
                            fontSize: 16,
                            color: lightBlackColor,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/pie_chart.png',
                              width: 129.3,
                              height: 129.3,
                            ),
                            SizedBox(
                              width: 10.7,
                            ),
                            Column(
                              children: [
                                StatisticInfo(
                                  title: 'Daily task',
                                  countTask: 15,
                                  linearStart: linearColorPurpleStart,
                                  linearend: linearColorPurpleEnd,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                StatisticInfo(
                                  title: 'Weekly Task',
                                  countTask: 22,
                                  linearStart: linearColorYellowRedStart,
                                  linearend: linearColorYellowRedEnd,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                StatisticInfo(
                                  title: 'Monthly task',
                                  countTask: 30,
                                  linearStart: linearColorYellowOrangeStart,
                                  linearend: linearColorYellowOrangeEnd,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 48,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.west,
                                size: 15,
                              ),
                              Text(
                                'June',
                                style: mediumTextStyle.copyWith(
                                  fontSize: 20,
                                  color: lightBlackColor,
                                ),
                              ),
                              Icon(
                                Icons.east,
                                size: 15,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Image.asset(
                            'assets/graph.png',
                            width: double.infinity,
                            height: 155,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/ranking.png',
                          width: double.infinity,
                          height: 100,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 19,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Singles',
                                style: mediumTextStyle.copyWith(
                                  fontSize: 15,
                                  color: whiteColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '18',
                                    style: mediumTextStyle.copyWith(
                                      fontSize: 25,
                                      color: whiteColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  Image.asset(
                                    'assets/up.png',
                                    width: 15.87,
                                    height: 17.49,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
