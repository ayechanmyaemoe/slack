// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slack/components/custom_appbar.dart';
import 'package:slack/components/online_icon.dart';

class BrowsePeople extends StatelessWidget {
  const BrowsePeople({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'People'),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Search for members',
                contentPadding: EdgeInsets.all(20)),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              OnlineIcon(),
              SizedBox(width: 10),
              Text('stormeden (you)'),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.add),),
      backgroundColor: Colors.white,
    );
  }
}
