import 'package:flutter/material.dart';

import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
      body: ListView(
        children: <Widget>[
          buildTFF('Frist Name', false),
          buildTFF('Last Name', false),
          buildTFF('Email', false),
          buildTFF('Password', true),
          buildTFF('Phone Number', false),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(38, 42, 43, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'login',
                    style: TextStyle(color: Colors.white54, fontSize: 20),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
