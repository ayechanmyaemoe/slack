// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChannelRow extends StatelessWidget {
  final String text;
  const ChannelRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              );
  }
}