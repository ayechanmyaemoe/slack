// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slack/components/channel_box.dart';
import 'package:slack/components/drawer.dart';
import 'package:slack/later_package/later.dart';
import 'package:slack/components/row_template.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 96, 8, 111),
        foregroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              mini: true,
              child: Center(child: Text('SE')),
            ),
          );
        }),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'storm eden',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'No connection',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'Jump to...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    )),
              ),
              SizedBox(
                height: 13,
              ),
              RowTemplate(
                  icon: Icon(Icons.file_copy_outlined), text: 'Canvases'),
              SizedBox(
                height: 13,
              ),
              RowTemplate(icon: Icon(Icons.send), text: 'Drafts & Sent'),
              SizedBox(
                height: 13,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Later()));
                },
                  child:
                      RowTemplate(icon: Icon(Icons.save_alt), text: 'Later')),
              SizedBox(
                height: 13,
              ),
              Divider(
                color: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 13,
              ),
              Stack(
                children: [
                  RowTemplate(
                      icon: Icon(Icons.account_circle_rounded),
                      text: 'Zoe Maxwell'),
                  Positioned(
                      right: 10,
                      top: 6,
                      child: Badge(
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        label: Text('3'),
                      ))
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChannelBox()));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: FaIcon(
                            FontAwesomeIcons.hashtag,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'social-media',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      right: 10,
                      top: 4,
                      child: Badge(
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        label: Text('1'),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.sports_score_outlined,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('My Projects', style: TextStyle(fontSize: 13))
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: FaIcon(
                      FontAwesomeIcons.hashtag,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'cutomer-education',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: FaIcon(
                      FontAwesomeIcons.hashtag,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'product-launch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Text('Channels', style: TextStyle(fontSize: 13)),
                  Spacer(),
                  Icon(
                    Icons.add,
                    color: Colors.black.withOpacity(0.5),
                  )
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: FaIcon(
                      FontAwesomeIcons.hashtag,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'announcements',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: FaIcon(
                      FontAwesomeIcons.hashtag,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'competitive',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: FaIcon(
                      FontAwesomeIcons.hashtag,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'marketing-team',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: FaIcon(
                      FontAwesomeIcons.hashtag,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'quarterly-planning',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.black.withOpacity(0.5),
                    size: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Add channel')
                ],
              ),
              Divider(
                color: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Text('Direct messages', style: TextStyle(fontSize: 13)),
                  Spacer(),
                  Icon(Icons.arrow_drop_up)
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Icon(Icons.account_circle_rounded),
                  SizedBox(width: 10),
                  Text('stormeden (you)', style: TextStyle(fontSize: 13)),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Text('Next, you could...', style: TextStyle(fontSize: 13)),
                  Spacer(),
                  Text('Clear all', style: TextStyle(fontSize: 13))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color.fromARGB(255, 245, 243, 246),
                ),
                width: 500,
                child: Row(children: [
                  Icon(
                    Icons.group,
                    size: 35,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add templates',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Bring your whole team together')
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color.fromARGB(255, 245, 243, 246),
                ),
                width: 500,
                child: Row(children: [
                  Icon(
                    Icons.emoji_people,
                    size: 35,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Send a message',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Get the conversation rolling')
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color.fromARGB(255, 245, 243, 246),
                ),
                width: 500,
                child: Row(children: [
                  Icon(
                    Icons.screen_search_desktop,
                    size: 35,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get Slack for desktop',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Stay connected from any device')
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color.fromARGB(255, 245, 243, 246),
                ),
                width: 500,
                child: Row(children: [
                  Icon(
                    Icons.question_mark,
                    size: 35,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'See a few tips',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Learn the ins-and-outs of Slack')
                    ],
                  )
                ]),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
