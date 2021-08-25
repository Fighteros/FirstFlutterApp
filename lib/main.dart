import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'layout/home_layout.dart';
import 'modules/login/LoginScreen.dart';
import 'modules/home/MessengerClone.dart';
import 'modules/login/login.dart';
import 'modules/login/login_screen.dart';
import 'single_chat_screen/SingleChatScreen.dart';


void main() {
  runApp(MyApp());
}

// two main widgets {Stateless - Stateful}
// class MyApp

class MyApp extends StatelessWidget {
  @override
  // manager (which inside it is seen outside it isn't seen)
  Widget build(BuildContext context) {
    // must start my project with MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
