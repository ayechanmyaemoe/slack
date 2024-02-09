// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OnlineIcon extends StatelessWidget {
  const OnlineIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Icon(Icons.account_circle_outlined, size: 35,),
      Positioned(
        right: 7,
        bottom: 4,
        child: Container(
          height: 10,
          width: 10,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(24)), color: Colors.green),
        ),
      )
    ]);
  }
}
