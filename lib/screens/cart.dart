import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../data/data.dart';

import 'cartproduct.dart';

class MyCart extends StatefulWidget {
  MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  Cart cartObject = Cart();

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color.fromRGBO(235, 234, 239, 1),
      child: Column(
        children: [
          Observer(builder: (BuildContext context) {
            for (var item in cartObject.cartItems) {
              return CartProduct(
                  productId: item.id,
                  productName: item.title,
                  productPrice: item.price);
            }
            return Text('Data is not here');
          })
        ],
      ),
    );
  }
}
