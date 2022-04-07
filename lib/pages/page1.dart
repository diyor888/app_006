import 'package:app_006/pages/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  static const String id = "page_1";

  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String rasm1 =
      "https://i.pinimg.com/236x/8a/8f/77/8a8f775f88ba3fb23a70afa483d89c6f.jpg";
  String rasm2 =
      "https://i.pinimg.com/236x/37/25/0a/37250a7d2d1aa19180ad1468609993cc.jpg";
  String rasm3 =
      "https://i.pinimg.com/236x/03/c7/5b/03c75b394bd7492e43bc4a2b94ff8003.jpg";
  String rasm4 = "https://storge.pic2.me/w/350x560/649/5e713f885bbb8.webp";
  String yil = "2022-03-3", kun = ' 11:21:05';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(rasm3),
                  fit: BoxFit.cover,
                ),
              ),
              // padding: EdgeInsets.symmetric(horizontal: 1, vertical: 150),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 75,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      "  " + yil + "\n" + "   " + kun,
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Expanded(
                    child: Text(""),
                  ),
                  Container(
                    width: 500,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white10,
                    ),
                    child: Row(
                      children: [

                        const SizedBox(
                          width: 130,
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                String vaqt1() {
                                  String kun = DateTime.now().toString();
                                  kun = kun.substring(0, 9);
                                  return kun;
                                }

                                String vaqt2() {
                                  String soat = DateTime.now().toString();
                                  soat = soat.substring(10, 19);
                                  return soat;
                                }

                                yil = vaqt1();
                                kun = vaqt2();
                              });
                            },
                            icon: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 35,
                            ),),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context,Settings.id);
                            },
                            icon: const Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 35,
                            ),),
                        const SizedBox(
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}