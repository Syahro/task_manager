import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import '../theme.dart';

class DashLine extends StatelessWidget {
  final double lengthDash;
  final bool isPass;

  DashLine(this.lengthDash, this.isPass);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.5),
      child: DottedLine(
        direction: Axis.vertical,
        dashLength: 4,
        lineLength: lengthDash,
        dashColor: isPass ? orangeColor : greyColor,
      ),
    );
  }
}
