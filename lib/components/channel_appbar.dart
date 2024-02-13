// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:slack/components/message_box.dart';
import 'package:slack/components/message_template.dart';

class ChannelAppBar extends StatelessWidget {
  const ChannelAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 96, 8, 111),
        foregroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#social-media',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '1 member',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Icon(Icons.add_card),
                SizedBox(width: 25,),
                Icon(Icons.headphones)
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            SizedBox(height: 12,),
            Text('Slack is a messaging app for groups of people who work together. You can send updates, share files and organize conversations so that everyone is in the loop.'),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 12,),
            Row(
              children: [
                Icon(Icons.read_more),
                SizedBox(width: 12,),
                Text('Learn about Slack')
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.group_add_rounded),
                SizedBox(width: 12,),
                Text('Invite people')
              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.connect_without_contact),
                SizedBox(width: 12,),
                Text('Connect apps')
              ],
            ),
            SizedBox(height: 10,),
            MessageTemplate()
          ],
        ),
      ),
      bottomSheet: MessageBox(),
    );
  }
}