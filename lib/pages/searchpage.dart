// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(12),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search for messages and files',
              suffixIcon: Icon(Icons.mic),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)))),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(style: BorderStyle.solid, color: Colors.black.withOpacity(0.5)))),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.people_alt,
                  color: Colors.black.withOpacity(0.7),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Browse people',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Icon(
                  Icons.search_off,
                  color: Colors.black.withOpacity(0.7),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Browse channels',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Icon(
                  Icons.play_arrow,
                  color: Colors.black.withOpacity(0.7),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Browse workflows',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Text('Narrow your search', style: TextStyle(fontSize: 13)),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    Icon(Icons.add_box_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'in:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Positioned(right: 10, top: 6, child: Text('Ex: #general'))
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    Icon(Icons.add_box_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'from:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Positioned(right: 10, top: 6, child: Text('Ex: Zoe Maxwell'))
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    Icon(Icons.add_box_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'is:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Positioned(right: 10, top: 6, child: Text('Ex: saved'))
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    Icon(Icons.add_box_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'after:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Positioned(right: 10, top: 6, child: Text('Ex: 2020-11-03'))
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    Icon(Icons.add_box_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'to:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Positioned(right: 10, top: 6, child: Text('Ex: me'))
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
