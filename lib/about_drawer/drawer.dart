// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:slack/about_drawer/add_workspace.dart';
import 'package:slack/about_drawer/preferences.dart';
import 'package:slack/components/row_template.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 330,
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Workspaces',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    'SE',
                    style: TextStyle(fontSize: 17),
                  ),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 208, 185, 212),
                          width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('stormeden'),
                    Text(
                      'storm-eden1783.slack.com',
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    )
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert)
              ],
            ),
            Spacer(),
            Divider(),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddWorkspace()));
                  },
                  child: RowTemplate(icon: Icon(Icons.settings), text: 'Add a workspace')
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Preferences()));
                  },
                  child: RowTemplate(icon: Icon(Icons.settings), text: 'Preferences')
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'https://slack.com/help');
                  },
                  child: RowTemplate(icon: Icon(Icons.question_mark_rounded), text: 'Help')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
