import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon:Icon(
          Icons.menu,
        ),
          onPressed: (){},),
        title: Text("First App"),
        actions: [
          IconButton(
            icon:  Icon(
              Icons.notification_important
          ),
            onPressed: () {print("notification clickd!");}
            ,),
          IconButton(
            icon: Icon(
              Icons.search
          ),
          onPressed: (){print("Search is clicked!");},
          ),
        ],
      ),
      body: SafeArea(child: Text("Hello world")),
    );
  }
}

// when notification Icon is clicked
void onNotificationClick() {
  print("notification clickd!");
}