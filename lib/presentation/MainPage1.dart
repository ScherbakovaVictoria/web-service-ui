import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            title: Text('Вход'),
            backgroundColor: Color.fromARGB(255, 242, 46, 21)),
        body: ListView(children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                width: width * 0.7, child: Image.asset('assets/logo.png')),
            Center(
                child: Text(
              'Авторизация                      ',
              style:
                  TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: 15,
            ),
            Container()
          ])
        ]));
  }
}
