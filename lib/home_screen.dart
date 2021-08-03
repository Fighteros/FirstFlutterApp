import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {
            print("menu");
          },
        ),
        title: Text("First App"),
        actions: [
          IconButton(
            icon: Icon(Icons.notification_important),
            onPressed: () {
              print("notification clickd!");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search is clicked!");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          color: Colors.black45,
          // width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("First",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Second",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Third",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Fourth",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("First",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Second",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Third",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Fourth",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("First",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Second",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Third",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Fourth",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Fourth",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Fourth",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Fourth",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Fourth",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Fourth",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
              Text("Fourth",
                  style: TextStyle(fontSize: 40.0, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

// when notification Icon is clicked
void onNotificationClick() {
  print("notification clickd!");
}
