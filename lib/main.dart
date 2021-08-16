import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_encore/colors/colors.dart';
import 'package:my_encore/pages/home/home_page.dart';
import 'ui_Pages/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppColors.kBlue),
    );

    return MaterialApp(
        title: 'ENCORE',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}
