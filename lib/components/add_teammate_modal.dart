// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class AddTeammateModal extends StatelessWidget {
  const AddTeammateModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 211, 175, 217),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      padding: EdgeInsets.only(top: 8, bottom: 25, right: 25, left: 25),
      width: 430,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 3,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Invite people to join your team',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_upward_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Share a link',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Expires in 27 days.',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'Deactivate link',
                style: TextStyle(fontSize: 12, color: Colors.red),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person_add_alt),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Add from Contacts',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Add by Email',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
        ],
      ),
    );
  }
}
