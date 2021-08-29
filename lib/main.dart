import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/shared/bloc_observer.dart';

import 'layout/home_layout.dart';

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
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
