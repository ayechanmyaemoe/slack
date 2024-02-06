// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:slack/components/message_box_icons.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.add),
        hintText: 'Messages #social-media',
        suffixIcon: Icon(Icons.mic),
      ),
      onTap: () {
        Visibility(child: MessageBoxIcons(), visible: true,);
      },
    );
  }
}