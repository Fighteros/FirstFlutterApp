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
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text(
                'First Text', style: TextStyle(
                fontSize: 40.0,
              ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Text(
                'Second Text',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Text(
                'Third Text',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Text(
                'Second Text',
                style: TextStyle(fontSize: 40.0,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// when notification Icon is clicked
void onNotificationClick() {
  print("notification clickd!");
}