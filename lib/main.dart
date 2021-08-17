import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/pages/channels/switch_channels.dart';
import 'package:my_encore/pages/home/home_page.dart';
import 'package:my_encore/ui_Pages/channels.dart';
import 'ui_Pages/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyEncore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SwitchChannels(),
    );
  }
}
