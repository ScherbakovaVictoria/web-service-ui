import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'RegisterPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            title: Text('Вход'),
            backgroundColor: Color.fromARGB(255, 242, 46, 21)),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: width * 0.7, child: Image.asset('assets/logo.png')),
                Center(
                    child: Text(
                  'Авторизация                      ',
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
                  textAlign: TextAlign.center,
                )),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: width * 0.9,
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Введите логин",
                          fillColor: Colors.black12,
                          filled: true)),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: width * 0.9,
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Введите пароль",
                          fillColor: Colors.black12,
                          filled: true)),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Войти',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                ),
                SizedBox(
                  height: 18,
                ),
                TextButton(
                    onPressed: (() {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return RegisterPage();
                          });
                    }),
                    child: Text(
                      'Зарегистрироваться',
                      style: TextStyle(color: Colors.red),
                    )),
                SizedBox(
                  height: 18,
                ),
                TextButton(
                    onPressed: (() {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return RegisterPage();
                          });
                    }),
                    child: Text(
                      'Забыли пароль?',
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ),
          ],
        ));
  }
}
