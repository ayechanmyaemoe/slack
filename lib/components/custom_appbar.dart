// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(fontSize: 20),),
      centerTitle: false,
      backgroundColor: Color.fromARGB(255, 96, 8, 111),
      foregroundColor: Colors.white,
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(64);
}