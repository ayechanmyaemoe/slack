// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MessageTemplate extends StatelessWidget {
  const MessageTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Divider(),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text('Feb 6th'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.5)),
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    color: Colors.white
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.account_box_rounded, size: 70,),
                SizedBox(height: 10,),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('stormeden', style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width: 10,),
                        Text('5:54 PM')
                      ],
                    ),
                    Text('joined #social-media')
                  ],
                )
              ],
            )
        ],
      ),
    );
  }
}