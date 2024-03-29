// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:slack/components/message_box_icons.dart';

<<<<<<< HEAD
// Message TextBox Style
class MessageBox extends StatelessWidget {
=======
class MessageBox extends StatefulWidget {
>>>>>>> 701ce76454393a1ba5113bbaf130824af80f4323
  const MessageBox({super.key});

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {

  FocusNode _focusNode = FocusNode();
  bool _isTextFieldFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isTextFieldFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.add),
            hintText: 'Messages #social-media',
            suffixIcon: Icon(Icons.mic),
          ),
          focusNode: _focusNode,
        ),
        Visibility(
          visible: _isTextFieldFocused,
          child: MessageBoxIcons()
        )
      ],
    );
  }
}