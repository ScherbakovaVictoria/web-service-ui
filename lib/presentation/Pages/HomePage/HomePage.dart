import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_shop/business/Menu/bloc/menu_bloc.dart';
import 'package:internet_shop/presentation/Pages/HomePage/bloc/homepage_bloc.dart';
import 'package:internet_shop/presentation/Widgets/CategoryCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Container(
      width: width * 0.9,
      child: ListView(children: [
        SizedBox(
          height: height * 0.02,
        ),
        Text('Домашняя'),
        SizedBox(
          height: height * 0.02,
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Поиск',
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Text('Категории'),
        Container(
          decoration: BoxDecoration(border: Border.all()),
        ),
        Container(
            width: width,
            height: height * 0.35,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                  name: 'fdsfasdf',
                  pictureUrl:
                      'https://raskrasdetstvo.com/upload/iblock/44e/44e3e32927c58aeba41da6550245e1aa.jpg',
                  height: height * 0.3,
                  width: width / 2,
                ),
                CategoryCard(
                  name: 'fdsfasdf',
                  pictureUrl:
                      'https://raskrasdetstvo.com/upload/iblock/44e/44e3e32927c58aeba41da6550245e1aa.jpg',
                  height: height * 0.3,
                  width: width / 2,
                ),
                CategoryCard(
                  name: 'fdsfasdf',
                  pictureUrl:
                      'https://raskrasdetstvo.com/upload/iblock/44e/44e3e32927c58aeba41da6550245e1aa.jpg',
                  height: height * 0.3,
                  width: width / 2,
                ),
                CategoryCard(
                  name: 'fdsfasdf',
                  pictureUrl:
                      'https://raskrasdetstvo.com/upload/iblock/44e/44e3e32927c58aeba41da6550245e1aa.jpg',
                  height: height * 0.2,
                  width: width / 2,
                ),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<MenuBloc>(context).add(GetMenu());
                    },
                    child: Text('получить данные'))
              ],
            )),
        Container(
          decoration: BoxDecoration(border: Border.all()),
        ),
      ]),
    ));
  }
}
