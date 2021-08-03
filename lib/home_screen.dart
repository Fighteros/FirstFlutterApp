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
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSefdQfM6ZNihgghV7IGLORhw5aG5XzQ2kDxQ&usqp=CAU"),
                height: 200.0,
                width: 250.0,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black,
                width: 250.0,
                child: Text(
                  "Flower",
                  style: TextStyle(fontSize: 35.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
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
