import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AlertDialog(
        title: Text('Регистрация'),
        content: Container(
          height: height,
          width: width,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: width * 0.9,
                    child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            border: InputBorder.none,
                            hintText: "Имя",
                            fillColor: Colors.black12,
                            filled: true)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: width * 0.9,
                    child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.phone),
                            border: InputBorder.none,
                            hintText: "Телефон",
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
                            icon: Icon(Icons.password),
                            border: InputBorder.none,
                            hintText: "Введите пароль",
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
                            icon: Icon(Icons.password),
                            border: InputBorder.none,
                            hintText: "Повторить пароль",
                            fillColor: Colors.black12,
                            filled: true)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Зарегестрироваться',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
