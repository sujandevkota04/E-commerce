// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 23, 69),
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      // body: Text("CartPage"),
    );
  }
}
