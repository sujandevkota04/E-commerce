// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        backgroundColor: Color.fromARGB(255, 121, 23, 69),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
      ),
      // body: Center(child: Text("HomePage")),
    );
  }
}
