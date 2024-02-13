// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slack/about_later/archived.dart';
import 'package:slack/about_later/completed.dart';
import 'package:slack/about_later/in_progress.dart';

class Later extends StatelessWidget {
  const Later({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
        title: Text('Later'),
        bottom: TabBar(tabs: [
          Tab(
            text: 'In Progress',
          ),
          Tab(
            text: 'Archived',
          ),
          Tab(
            text: 'Completed',
          ),
        ]),
      ),
      body: TabBarView(children: [
        InProgress(),
        Archived(),
        Completed()
      ]),
      ),
    );
  }
}
