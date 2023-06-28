// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_project/feature/cart/presentation/cart_page.dart';
import 'package:flutter_project/feature/home/presentation/home_page.dart';
import 'package:flutter_project/feature/profile/presentation/profile_page.dart';
import 'package:flutter_project/feature/shop/presentation/shop_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPageNo = 0;
  List<Widget> pages = [HomePage(), ShopPage(), CartPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageNo,
        backgroundColor: Color.fromARGB(255, 110, 150, 218),
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 19, 214, 84),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: Color.fromARGB(255, 59, 26, 207),
              ),
              label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 216, 33, 33),
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 157, 213, 230),
              ),
              label: "Profile"),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: Color.fromARGB(255, 217, 213, 231),
        unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
        onTap: (int index) {
          setState(() {
            currentPageNo = index;
          });
        },
      ),
      body: pages[currentPageNo],
    );
  }
}
