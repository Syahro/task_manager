import 'package:flutter/material.dart';

class AvatarTeam extends StatelessWidget {
  final String imageUrl;

  AvatarTeam({
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17.5),
      child: Image.asset(
        imageUrl,
        width: 35,
        height: 35,
      ),
    );
  }
}
