import 'package:flutter/material.dart';
import '../data/data.dart';

class Product extends StatefulWidget {
  String? productName;
  int? productPrice, productId;

  Product(
      {required this.productId,
      required this.productName,
      required this.productPrice});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Cart cartObj = Cart();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.white,
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(widget.productName.toString()),
            ],
          ),
          Row(
            children: [
              Text('Rs. ' + widget.productPrice.toString()),
            ],
          ),
          IconButton(
              onPressed: () {
                cartObj.addToCart(widget.productId!);
              },
              icon: Icon(Icons.add_shopping_cart))
        ],
      ),
    );
  }
}
