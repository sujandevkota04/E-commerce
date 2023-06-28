import 'package:flutter/material.dart';
import 'package:flutter_project/feature/shop/presentation/product_detail_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productImage,
    required this.productTitle,
    required this.productPrice,
  });

  final String productImage;
  final String productTitle;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
                productImage: productImage,
                productTitle: productTitle,
                productPrice: productPrice,
                productDescription: 'This is my product description'),
          ),
        );
      },
      // return Card(
      child: Card(
        child: Column(
          children: [
            Image.asset(
              productImage,
              fit: BoxFit.fitWidth,
            ),
            Text(productTitle),
            Text(productPrice),
          ],
        ),
      ),
    );
  }
}
