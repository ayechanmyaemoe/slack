// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

// This will appear once the message textbox is on focused
class MessageBoxIcons extends StatelessWidget {
  const MessageBoxIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Row(
        children: [
          Icon(Icons.add),
          Icon(Icons.abc),
          Icon(Icons.emoji_emotions),
          Icon(Icons.alternate_email_outlined),
          Icon(Icons.add_box_outlined),
        ],
      ),
    );
  }
}