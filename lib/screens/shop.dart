import 'package:flutter/material.dart';
import 'product.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(235, 234, 239, 1),
        child: Column(
          children: [
            Product(),
          ],
        ));
  }
}
