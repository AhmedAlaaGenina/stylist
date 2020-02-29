import 'package:flutter/material.dart';
import 'package:stylist/main_page.dart';
import 'package:stylist/tab_bar_screen/home.dart';
import 'package:stylist/user_verfication/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget buildTFF(String hint, bool secure) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: secure,
        decoration: InputDecoration(
          labelText: hint,
          fillColor: Colors.deepOrangeAccent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          hintStyle: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(38, 42, 43, 1),
      ),
      body: Container(
        color: Color.fromRGBO(38, 42, 43, 1),
        child: ListView(
          children: <Widget>[
            buildTFF('Username', false),
            buildTFF('Password', true),
            ButtonMe(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
              },
              buttonName: 'Login',
              buttonName1: '-Forget Password',
            ),
            ButtonMe(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ),
                );
              },
              buttonName: 'Sign Up',
              buttonName1: '-Creat A New ACount',
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonMe extends StatelessWidget {
  final Function onTap;
  final String buttonName;
  final String buttonName1;
  ButtonMe({this.onTap, this.buttonName, this.buttonName1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromRGBO(38, 42, 43, 1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: onTap,
                child: Text(
                  buttonName,
                  style: TextStyle(color: Colors.white54, fontSize: 20),
                ),
              ),
              Text(
                buttonName1,
                style: TextStyle(color: Colors.white54, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
