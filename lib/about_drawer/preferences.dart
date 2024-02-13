// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:slack/components/custom_appbar.dart';
import 'package:slack/components/icon_with_two_text.dart';
import 'package:slack/components/row_template.dart';
import 'package:slack/components/switch_button_row.dart';
import 'package:slack/components/switch_button_row_with_text.dart';
import 'package:slack/components/title_template.dart';

class Preferences extends StatelessWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Preferences'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TitleTemplate(text: 'Time and place'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(
                  icon: Icon(Icons.map), text1: 'Language', text2: 'English(US)'),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRow(
                icon: Icon(Icons.hourglass_bottom),
                text1: 'Set time zone automatically',
              ),
              Divider(),
              TitleTemplate(text: 'Look and feel'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(
                  icon: Icon(Icons.handshake),
                  text1: 'Default emoji skin tones',
                  text2: 'hand'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(
                  icon: Icon(Icons.mode),
                  text1: 'Dark mode',
                  text2: 'System default'),
              Divider(),
              TitleTemplate(text: 'Accessibility'),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRowWithText(
                icon: Icon(Icons.lightbulb),
                text1: 'Allow animated images & emoji',
                text2: 'This only affects what you see',
              ),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRowWithText(
                icon: Icon(Icons.cable),
                text1: 'Underline links',
                text2: 'Websites and hyperlinks will be underlined in conversations',
              ),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRowWithText(
                icon: Icon(Icons.keyboard),
                text1: 'Display typing indicators',
                text2: 'See when someone is typing',
              ),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRowWithText(
                icon: Icon(Icons.headphones),
                text1: 'Raise to listen',
                text2: 'Play huddles audio through the phone earpiece and turn off video when you raise your phone...',
              ),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRowWithText(
                icon: Icon(Icons.keyboard),
                text1: 'Announce huddle calls',
                text2: 'Incoming huddles are displayed on the lock screen',
              ),
              Divider(),
              TitleTemplate(text: 'Privacy & visibility'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(
                  icon: Icon(Icons.lock),
                  text1: 'Slack Connect discoverability',
                  text2: 'Choose who can see that you use Slack'),
              Divider(),
              TitleTemplate(text: 'Advanced'),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRowWithText(
                icon: Icon(Icons.outbox),
                text1: 'Open web pages in app',
                text2: 'Allow links to open in Slack',
              ),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRowWithText(
                icon: Icon(Icons.lock_clock),
                text1: 'Optimize image uploads',
                text2: 'Images are optimized for upload performance',
              ),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRowWithText(
                icon: Icon(Icons.lock_clock),
                text1: 'Optimize video uploads',
                text2: 'Videos are optimized for upload performance',
              ),
              SizedBox(
                height: 12,
              ),
              SwitchButtonRowWithText(
                icon: Icon(Icons.photo),
                text1: 'Show image previews',
                text2: 'Show previews of images and files',
              ),
              SizedBox(
                height: 12,
              ),
              RowTemplate(icon: Icon(Icons.person), text: 'Account Settings'),
              Divider(),
              TitleTemplate(text: 'Troubleshooting'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(icon: Icon(Icons.document_scanner), text1: 'Reset cache', text2: 'Clear cached images, files and data'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(icon: Icon(Icons.settings), text1: 'Force stop', text2: 'Unsaved data may be lost'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(icon: Icon(Icons.arrow_back_ios), text1: 'Send feedback and logs', text2: 'Let us know how we can improve'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(icon: Icon(Icons.phone_callback), text1: 'Slack calls debugging', text2: 'Let Slack see logs when needed'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(icon: Icon(Icons.question_mark_rounded), text1: 'Help center', text2: 'Support articles and tutorials'),
              Divider(),
              TitleTemplate(text: 'About Slack'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(icon: Icon(Icons.file_present), text1: 'Privacy policy', text2: 'How Slack collects and uses information'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(icon: Icon(Icons.file_present), text1: 'Open source licences', text2: 'Libraries we use'),
              SizedBox(
                height: 12,
              ),
              IconWithTwoText(icon: Icon(Icons.help), text1: 'Version', text2: '24.01.50.0-90012937-23243'),
            ],
          ),
        ),
      ),
    );
  }
}
