import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Hello World!",
    home: Scaffold(
      appBar: AppBar(title: Text("Hello World.")),
      body: HelloWorld(),
    ),
  ));
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 120.0,
        color: Colors.teal,
        child: Center(
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
