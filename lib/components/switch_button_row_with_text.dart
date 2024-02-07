// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchButtonRowWithText extends StatefulWidget {
  final Icon icon;
  final String text1;
  final String text2;

  const SwitchButtonRowWithText({super.key, required this.icon, required this.text1, required this.text2});

  @override
  State<SwitchButtonRowWithText> createState() => _SwitchButtonRowWithTextState();
}

class _SwitchButtonRowWithTextState extends State<SwitchButtonRowWithText> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.icon,
        SizedBox(width: 12,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.text1),
              Text(widget.text2, style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 13),),
            ],
          ),
        ),
        CupertinoSwitch(
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
            }),
      ],
    );
  }
}
