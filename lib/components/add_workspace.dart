// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:slack/components/custom_appbar.dart';
import 'package:slack/components/row_template.dart';

class AddWorkspace extends StatelessWidget {
  const AddWorkspace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Add Workspaces'),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('stormeden1783@gmail.com'),
                Icon(Icons.more_horiz_rounded)
              ],
            ),
            SizedBox(height: 12,),
            Text("You've signed in to all the workspaces for this email address."),
            SizedBox(height: 12,),
            Divider(),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Not the workspaces you're looking for?"),
              ],
            ),
            SizedBox(height: 12,),
            RowTemplate(icon: Icon(Icons.menu_book), text: 'Sign in to another workspace'),
            SizedBox(height: 12,),
            RowTemplate(icon: Icon(Icons.person_add), text: 'Join another workspace'),
            SizedBox(height: 12,),
            RowTemplate(icon: Icon(Icons.add), text: 'Create a new workspace'),
          ],
        ),
      ),
    );
  }
}