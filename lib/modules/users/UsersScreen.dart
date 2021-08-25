import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/models/user/user_model.dart';

// dummy data
class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: "Ahemd M. Abd El-Ghany", phone: "01251255412"),
    UserModel(id: 2, name: "Fathi Yasser", phone: "0105646945648"),
    UserModel(id: 3, name: "Ali Mohamed", phone: "010285489412"),
    UserModel(id: 4, name: "Marwan Pablo", phone: "0120254512235"),
    UserModel(id: 5, name: "Cs Lab", phone: "02124502050"),
    UserModel(id: 6, name: "Jeo Gaming", phone: "2023023022032"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 20),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
              ),
          itemCount: users.length),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                '${user.id}',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 25.0,
            ),
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${user.name}",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${user.phone}",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ))
          ],
        ),
      );
}
