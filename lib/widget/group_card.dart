import 'package:flutter/material.dart';
import 'package:task_manager/theme.dart';

import 'avatar_team.dart';

class GroupCard extends StatelessWidget {
  final String teamName;
  final String team1;
  final String team2;
  final Color progressColor;

  GroupCard({
    this.teamName,
    this.team1,
    this.team2,
    this.progressColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 250,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: lightGreyColor.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  teamName,
                  style: mediumTextStyle.copyWith(
                    fontSize: 12,
                    color: blackColor,
                  ),
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: linearColorOrangeStart.withOpacity(0.5),
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(1, 1),
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        linearColorOrangeStart,
                        linearColorOrangeEnd,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.chevron_right,
                      color: whiteColor,
                      size: 11,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AvatarTeam(
                  imageUrl: team1,
                ),
                AvatarTeam(
                  imageUrl: team2,
                ),
                AvatarTeam(
                  imageUrl: 'assets/team5.png',
                ),
                AvatarTeam(
                  imageUrl: 'assets/team6.png',
                ),
                AvatarTeam(
                  imageUrl: 'assets/team7.png',
                ),
              ],
            ),
            SizedBox(
              height: 29.5,
            ),
            Container(
              height: 10,
              width: double.infinity,
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: semiLightGreyColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: (6 * (MediaQuery.of(context).size.width / 17)),
                          height: 4,
                          decoration: BoxDecoration(
                            color: progressColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: whiteColor,
                                blurRadius: 0,
                                spreadRadius: 2,
                                offset: Offset(0, 0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Progress',
                  style: regularTextStyle.copyWith(
                    fontSize: 10,
                    color: greyColor,
                  ),
                ),
                Text(
                  '60%',
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 10,
                    color: lightBlackColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
