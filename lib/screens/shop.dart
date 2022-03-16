import 'package:flutter/material.dart';
import 'product.dart';
import '../data/data.dart';

class Shop extends StatelessWidget {
  Shop({Key? key}) : super(key: key);

  Cart cartObject = Cart();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(235, 234, 239, 1),
      child: Column(
        children: [
          for (var item in cartObject.totalItems)
            Product(
                productId: item.id,
                productName: item.title,
                productPrice: item.price),
        ],
      ),
    );
  }
}
