// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slack/components/custom_appbar.dart';

class Mentions extends StatelessWidget {
  const Mentions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Mentions & reactions'),
      body: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Never miss a beat',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Slack can give you a ping whenever a teammate mentions you by name - so you stay connected, no matter where you are.',
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ],
          )),
    );
  }
}
