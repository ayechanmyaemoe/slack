// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContainerRow extends StatelessWidget {
  final Icon icon;
  final String title;
  final String text;
  const ContainerRow({super.key, required this.icon, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color.fromARGB(255, 245, 243, 246),
                ),
                width: 500,
                child: Row(children: [
                  icon,
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(text)
                    ],
                  )
                ]),
              );
  }
}