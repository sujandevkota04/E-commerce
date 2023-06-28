// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_project/feature/shop/presentation/product_card.dart';

import '../../../core/constant/app_images.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          backgroundColor: Color.fromARGB(255, 121, 23, 69),
          title: Text(
            "Shop",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            //Name of Tabs will be here
            TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: "Toys"),
                  Tab(text: "Chocolates"),
                  Tab(text: "Clothes"),
                ]),

            //When we select the tab bar which page will be selected is defined here
            Expanded(
              child: TabBarView(children: [
                GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (context, index) {
                      return ProductCard(
                          productImage: AppImages.profilePic,
                          productTitle: "Doll No. 1",
                          productPrice: "Rs 1500");
                    }),
                ProductCard(
                    productImage: AppImages.profilePic,
                    productTitle: "Doll No. 1",
                    productPrice: "Rs 1500"),
                Center(child: Text('Chocolate khane vaye aam hai')),
              ]),
            ),
          ],
        ),

        // body: Text("ShopPage"),
      ),
    );
  }
}
