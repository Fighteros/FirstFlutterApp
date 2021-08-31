import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/shared/bloc_observer.dart';

import 'layout/news-app/news-app.dart';
import 'layout/todo-app/todo_layout.dart';

void main() {
  Bloc.observer = MyBlocObserver();
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backwardsCompatibility: false,
          backgroundColor: Colors.white,
          elevation: 0.0
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepPurple,
          elevation: 20.0
        )
      ),
      debugShowCheckedModeBanner: false,
      home: NewsLayout(),
    );
  }
}
