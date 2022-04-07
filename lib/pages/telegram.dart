import 'package:app_006/pages/page1.dart';
import 'package:flutter/material.dart';
class Telegram extends StatefulWidget {
  static const String id = 'telegram';
  const Telegram({Key? key}) : super(key: key);

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teleramm'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Page1.id);
            },
            icon: Icon(Icons.home_outlined),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(3),
          children: [
            accountlar(
                title: "accaount1",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount2",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount3",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount4",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount5",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount6",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount7",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount8",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount9",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount10",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount11",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
            accountlar(
                title: "accaount12",
                image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvatlV1XCcuZ0wY_o4_EzNOspCKy1DH0_9aQ&usqp=CAU"),
          ],
        ),
      ),
    );
  }
  Widget accountlar({title, image}) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image(
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(title),
            ],
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
