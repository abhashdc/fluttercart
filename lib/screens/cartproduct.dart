import 'package:flutter/material.dart';
import '../data/data.dart';

class CartProduct extends StatefulWidget {
  String? productName;
  int? productPrice, productId;

  CartProduct(
      {required this.productId,
      required this.productName,
      required this.productPrice});

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
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
        ],
      ),
    );
  }
}
