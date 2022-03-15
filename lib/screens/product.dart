import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

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
              Text('Facial Cleanser'),
            ],
          ),
          Row(
            children: [
              Text('Price'),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart))
        ],
      ),
    );
  }
}
