import 'package:flutter/material.dart';
import 'package:stylist/shared_ui/drawer.dart';
import 'package:stylist/tab_bar_screen/cart.dart';
import 'package:stylist/tab_bar_screen/home.dart';
import 'package:stylist/tab_bar_screen/recomended.dart';
import 'package:stylist/user_verfication/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
