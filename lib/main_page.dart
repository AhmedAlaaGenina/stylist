import 'package:flutter/material.dart';
import 'package:stylist/shared_ui/drawer.dart';
import 'package:stylist/tab_bar_screen/cart.dart';
import 'package:stylist/tab_bar_screen/home.dart';
import 'package:stylist/tab_bar_screen/recomended.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(38, 42, 43, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            actions: <Widget>[
              InkWell(
                child: Icon(Icons.search),
                onTap: () {
                  print("click search");
                },
              ),
              SizedBox(width: 10),
              InkWell(
                child: Icon(Icons.notifications),
                onTap: () {
                  print("notifications");
                },
              ),
              SizedBox(width: 20)
            ],
            bottom: TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.account_balance),
              ),
              Tab(
                icon: Icon(Icons.shopping_cart),
              ),
            ]),
          ),
          drawer: DrawerUI(),
          body: TabBarView(children: <Widget>[
            Home(),
            Recomended(),
            Cart(),
          ]),
        ),
      ),
    );
  }
}
