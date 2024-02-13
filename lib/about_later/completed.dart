// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check, size: 40,),
            SizedBox(
              height: 7,
            ),
            Text(
              'Feels good to check things off your to-do-list',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "See all the things you've completed in one place. Sometimes you need a reminder of how awesome you are.",
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ],
        ));
  }
}
