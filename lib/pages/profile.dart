// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:slack/components/custom_appbar.dart';
import 'package:slack/components/row_template.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'You',
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Stack(children: [
                  Icon(
                    Icons.account_box_rounded,
                    size: 70,
                  ),
                  Positioned(
                    right: 9,
                    bottom: 10,
                    child: Badge(
                      smallSize: 10,
                      backgroundColor: Colors.green,
                    ),
                  )
                ]),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'stormeden',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text('Active')
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {}, 
              child: Row(
                children: [
                  Icon(Icons.emoji_emotions),
                  SizedBox(width: 10,),
                  Text('Update your status'),
                ],
              )),
            ),
            SizedBox(
              height: 13,
            ),
            RowTemplate(
                icon: Icon(Icons.notifications_off),
                text: 'Pause notifications'),
            SizedBox(
              height: 13,
            ),
            RowTemplate(
                icon: Icon(Icons.person_2), text: 'Set yourself as away'),
            Divider(),
            RowTemplate(icon: Icon(Icons.person_3), text: 'View profile'),
            SizedBox(
              height: 13,
            ),
            RowTemplate(icon: Icon(Icons.phone_android), text: 'Notifications'),
            SizedBox(
              height: 13,
            ),
            RowTemplate(
                icon: Icon(Icons.settings_accessibility), text: 'Preferences'),
          ],
        ),
      ),
    );
  }
}
