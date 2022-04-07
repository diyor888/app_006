import 'package:app_006/pages/page1.dart';
import 'package:app_006/pages/settings.dart';
import 'package:app_006/pages/telegram.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                primarySwatch: Colors.blue,
      ),
      home: Page1(),
      routes: {
        Page1.id:(context) => Page1(),
        Settings.id:(context) => Settings(),
        Telegram.id:(context) => Telegram(),
      },
    );
  }
}
