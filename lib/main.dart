// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:slack/components/drawer.dart';
import 'package:slack/pages/homepage.dart';
import 'package:slack/pages/mentions.dart';
import 'package:slack/pages/messages.dart';
import 'package:slack/pages/profile.dart';
import 'package:slack/pages/searchpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DrawerPage(),
        body: pages[currentIndex],
        floatingActionButton: FloatingActionButton(
            mini: true,
            onPressed: () {},
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 20,
            ),
            backgroundColor: Color.fromARGB(255, 96, 8, 111),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            )),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedIndex: currentIndex,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.message_outlined), label: 'DMs'),
            NavigationDestination(
                icon: Icon(Icons.alternate_email_outlined), label: 'Mentions'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
            NavigationDestination(
                icon: Icon(Icons.account_circle_outlined), label: 'You'),
          ],
        ),
      ),
    );
  }

  final pages = [HomePage(), Messages(), Mentions(), SearchPage(), Profile()];
}
