import 'package:flutter/material.dart';

class IconWithTwoText extends StatelessWidget {
  final Icon icon;
  final String text1;
  final String text2;
  const IconWithTwoText({super.key, required this.icon, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(width: 12,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1),
            Text(text2),
          ],
        )
      ],
    );
  }
}