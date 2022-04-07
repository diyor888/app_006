import 'package:app_006/pages/page1.dart';
import 'package:app_006/pages/telegram.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  static const String id = "settings";

  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String rasm2 =
      "https://htmlcolorcodes.com/assets/images/colors/bright-blue-color-solid-background-1920x1080.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  image: DecorationImage(
                    image: NetworkImage("https://us.123rf.com/450wm/lafifa/lafifa1607/lafifa160700411/59792034-streszczenie-elegancki-ramki-element-projektu-dla-reklamy-banery-etykiety-druki-plakaty-www-prezenta.jpg?ver=6",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 5000,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, Page1.id);
                      },
                      padding: EdgeInsets.all(4),
                      child: Text(" O r q a g a ", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      elevation: 10,
                      shape: Border.all(width: 2,color: Colors.purpleAccent),
                      highlightColor: Colors.purple,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RaisedButton(onPressed: () {
                      Navigator.pushReplacementNamed(context, Telegram.id);
                    },
                      padding: EdgeInsets.all(4),
                      child: Text(" T e l e g r a m ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      shape: Border.all(width: 3, color: Colors.blue),
                      elevation: 10,
                      highlightColor: Colors.lightBlueAccent,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
