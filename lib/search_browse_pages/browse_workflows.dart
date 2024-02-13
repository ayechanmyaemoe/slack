// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slack/components/custom_appbar.dart';
import 'package:slack/components/title_template.dart';

class BrowseWorkflows extends StatelessWidget {
  const BrowseWorkflows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Workflows'),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Search workflows',
                contentPadding: EdgeInsets.all(20)),
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TitleTemplate(text: 'Recent Workflows'),
                SizedBox(
                  height: 13,
                ),
                Text(
                    "You haven't run any workflows yet, but you can get started by searching.")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
