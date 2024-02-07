// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class InProgress extends StatelessWidget {
  const InProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your place to organize messages',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Get started by saving a message from a conversation or setting a reminder for a task.',
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ],
        ));
  }
}
