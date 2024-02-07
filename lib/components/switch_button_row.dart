// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchButtonRow extends StatefulWidget {
  final Icon icon;
  final String text1;

  const SwitchButtonRow({super.key, required this.icon, required this.text1});

  @override
  State<SwitchButtonRow> createState() => _SwitchButtonRowState();
}

class _SwitchButtonRowState extends State<SwitchButtonRow> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.icon,
        SizedBox(width: 12,),
        Text(widget.text1),
        Spacer(),
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
