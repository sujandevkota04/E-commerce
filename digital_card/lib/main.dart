// ignore_for_file: prefer_const_constructors

/*This is the main fucntion*/
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_digital_card.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(DigitalCardApp()); //Runs our app
}

class DigitalCardApp extends StatelessWidget {
  const DigitalCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: MyDigitalCard(),
    );
  }
}
