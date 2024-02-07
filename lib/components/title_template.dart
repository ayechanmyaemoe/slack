import 'package:flutter/material.dart';

class TitleTemplate extends StatelessWidget {
  final String text;
  const TitleTemplate({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(fontSize: 12),),
      ],
    );
  }
}