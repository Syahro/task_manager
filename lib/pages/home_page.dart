import 'package:flutter/material.dart';
import 'package:task_manager/theme.dart';
import 'package:task_manager/widget/bottom_floating.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      floatingActionButton: BottomFloating(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
