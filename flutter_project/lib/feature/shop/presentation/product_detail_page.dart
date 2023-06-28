// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productImage;
  final String productTitle;
  final String productPrice;
  final String productDescription;

  // ignore: use_key_in_widget_constructors
  const ProductDetailPage({
    Key? key,
    required this.productImage,
    required this.productTitle,
    required this.productPrice,
    required this.productDescription,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Product Detail",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                child: Image.asset(
                  productImage,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                productTitle,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                productPrice,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                productDescription,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //Add to cart functionality
                  //Implement your logic here
                },
                child: Text("Add to Cart"),
              )
            ],
          ),
        ));
    // return const Placeholder();
  }
}
