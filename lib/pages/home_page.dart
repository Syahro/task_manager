import 'package:flutter/material.dart';
import 'package:task_manager/theme.dart';
import 'package:task_manager/widget/bottom_floating.dart';
import 'package:task_manager/widget/group_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      floatingActionButton: BottomFloating(
        isHome: true,
        isTask: false,
        isDashboard: false,
        isuser: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin,
                    top: 35,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tuesday, 28 Jan',
                                style: regularTextStyle.copyWith(
                                  fontSize: 13,
                                  color: greyColor,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Today ',
                                  style: boldTextStyle.copyWith(
                                    fontSize: 18,
                                    color: lightBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '🌥',
                                      style: boldTextStyle.copyWith(
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: blackColor.withOpacity(0.1),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  offset: Offset(1, 1),
                                )
                              ],
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/notif.png',
                                width: 15,
                                height: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Container(
                        height: 230,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/baner.png',
                                width: double.infinity,
                                height: 207.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 150),
                              child: Container(
                                height: 80,
                                width: MediaQuery.of(context).size.width -
                                    (2 * defaultMargin),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: lightGreyColor.withOpacity(0.1),
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                      offset: Offset(1, 3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '10 daily task to complete today!',
                                        style: semiBoldTextStyle.copyWith(
                                          fontSize: 16,
                                          color: orangeColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'blast your productivity.',
                                        style: regularTextStyle.copyWith(
                                          fontSize: 12,
                                          color: greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Group task',
                            style: boldTextStyle.copyWith(
                              fontSize: 18,
                              color: lightBlackColor,
                            ),
                          ),
                          Text(
                            'See all',
                            style: regularTextStyle.copyWith(
                              fontSize: 12,
                              color: greyColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(
                      left: defaultMargin,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GroupCard(
                            teamName: 'Hunger Team Night ',
                            team1: 'assets/team1.png',
                            team2: 'assets/team2.png',
                            progressColor: orangeColor,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GroupCard(
                            teamName: 'Pizzy Crazy Pizza',
                            team1: 'assets/team3.png',
                            team2: 'assets/team4.png',
                            progressColor: blueColor,
                          ),
                          SizedBox(
                            width: defaultMargin,
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Activity',
                            style: boldTextStyle.copyWith(
                              fontSize: 18,
                              color: lightBlackColor,
                            ),
                          ),
                          Text(
                            'See all',
                            style: regularTextStyle.copyWith(
                              fontSize: 12,
                              color: greyColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 223,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: lightGreyColor.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: Offset(2, 2),
                            )
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/graph.png',
                            width: 233,
                            height: 155,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
