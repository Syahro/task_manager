import 'package:flutter/material.dart';
import 'package:task_manager/pages/dashboard_page.dart';
import 'package:task_manager/pages/home_page.dart';
import 'package:task_manager/theme.dart';
import 'package:task_manager/widget/icon_floating.dart';

class BottomFloating extends StatelessWidget {
  final bool isHome;
  final bool isTask;
  final bool isDashboard;
  final bool isuser;

  BottomFloating({
    this.isHome,
    this.isTask,
    this.isDashboard,
    this.isuser,
  });
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: IconFloating(
                imageUrl: 'assets/home.png',
                isActive: isHome,
              ),
            ),
            IconFloating(
              imageUrl: 'assets/task.png',
              isActive: isTask,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DashboardPage();
                    },
                  ),
                );
              },
              child: IconFloating(
                imageUrl: 'assets/dashboard.png',
                isActive: isDashboard,
              ),
            ),
            IconFloating(
              imageUrl: 'assets/user.png',
              isActive: isuser,
            )
          ],
        ),
      ),
    );
  }
}
