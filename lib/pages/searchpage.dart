// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slack/components/row_template.dart';
import 'package:slack/search_browse_pages/browse_people.dart';
import 'package:slack/search_browse_pages/browse_workflows.dart';

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
            border: Border(
                top: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black.withOpacity(0.5)))),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BrowsePeople()));
                },
                child: RowTemplate(
                    icon: Icon(Icons.people_alt), text: 'Browse people')),
            SizedBox(
              height: 13,
            ),
            RowTemplate(icon: Icon(Icons.search_off), text: 'Browse channels'),
            SizedBox(
              height: 13,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BrowseWorkflows()));
              },
                child: RowTemplate(
                    icon: Icon(Icons.play_arrow), text: 'Browse workflows')),
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
            Row(
              children: [
                Icon(Icons.add_box_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'in:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Ex: #general'),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Icon(Icons.add_box_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'from:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Ex: Zoe Maxwell'),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Icon(Icons.add_box_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'is:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Ex: saved'),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Icon(Icons.add_box_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'after:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Ex: 2020-11-03'),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Icon(Icons.add_box_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'to:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Ex: me'),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
