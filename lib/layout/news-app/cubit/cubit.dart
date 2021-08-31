import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/layout/news-app/cubit/states.dart';
import 'package:flutterapp/modules/business/BusinessScreen.dart';
import 'package:flutterapp/modules/science/science-screen.dart';
import 'package:flutterapp/modules/settings_screen/settings-screen.dart';
import 'package:flutterapp/modules/sports/sports-screen.dart';

class NewsCubit extends Cubit<NewsStates> {
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems =[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: 'Business'
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: 'Sports'
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Science'
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: 'Settings'
    ),
  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingsScreen(),
  ];

  NewsCubit() : super(NewsAppInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  void changeBottomNavBar (int index) {
     currentIndex = index;
     emit(NewsBottomNavState());
  }

}