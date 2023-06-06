import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  String pictureUrl = '';
  String name = '';
  double height = 0.0;
  double width = 0.0;
  CategoryCard({
    required this.name,
    required this.pictureUrl,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  State<CategoryCard> createState() =>
      _CategoryCardState(name, pictureUrl, height, width);
}

class _CategoryCardState extends State<CategoryCard> {
  String pictureUrl = '';
  String name = '';
  double height = 0.0;
  double width = 0.0;
  _CategoryCardState(this.name, this.pictureUrl, this.height, this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Card(
        child: Column(children: [
          Text(name),
          SizedBox(
            height: height * 0.07,
          ),
          CachedNetworkImage(
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl: pictureUrl,
            fit: BoxFit.fitWidth,
            width: width * 0.8,
          ),
        ]),
      ),
    );
  }
}
