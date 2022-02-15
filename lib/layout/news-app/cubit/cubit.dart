import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/layout/news-app/cubit/states.dart';
import 'package:flutterapp/modules/business/BusinessScreen.dart';
import 'package:flutterapp/modules/science/science-screen.dart';
import 'package:flutterapp/modules/settings_screen/settings-screen.dart';
import 'package:flutterapp/modules/sports/sports-screen.dart';
import 'package:flutterapp/shared/network/remote/dio_helper.dart';

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
    // BottomNavigationBarItem(
    //   icon: Icon(
    //     Icons.settings,
    //   ),
    //   label: 'Settings'
    // ),
  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    // SettingsScreen(),
  ];

  NewsCubit() : super(NewsAppInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  void changeBottomNavBar (int index) {
     currentIndex = index;
     if(index == 1) getSports();
     if (index == 2) getScience();
     emit(NewsBottomNavState());
  }

  List<dynamic> business = [];

  void getBusiness() {
    emit(NewsGetBusinessLoadingState());
    DioHelper.getData(
        url: '/v2/top-headlines',
        query: {
          'country': 'eg',
          'category': 'business',
          'apiKey': '25d31f28f03e4f44bd4d5436a59cef6b'
        }
    ).then((value) {
      business = value!.data['articles'];
      // print(business[0]['title']);

      emit(NewsGetBusinessSuccessState());
    }).catchError((error) {
          print(error.toString());
          emit(NewsGetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic> sports = [];

  void getSports() {
    if(sports.length == 0 ) {
    emit(NewsGetSportsLoadingState());
    DioHelper.getData(
        url: '/v2/top-headlines',
        query: {
          'country': 'eg',
          'category': 'sports',
          'apiKey': '25d31f28f03e4f44bd4d5436a59cef6b'
        }
    ).then((value) {
      sports = value!.data['articles'];

      emit(NewsGetSportsSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewsGetSportsErrorState(error.toString()));
    });}
    else {
      emit(NewsGetSportsSuccessState());
    }

  }

  List<dynamic> science = [];

  void getScience() {
    if(science.length == 0 ) {
    emit(NewsGetScienceLoadingState());
    DioHelper.getData(
        url: '/v2/top-headlines',
        query: {
          'country': 'eg',
          'category': 'science',
          'apiKey': '25d31f28f03e4f44bd4d5436a59cef6b'
        }
    ).then((value) {
      science = value!.data['articles'];

      emit(NewsGetScienceSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewsGetScienceErrorState(error.toString()));
    });
    }
    else {
      emit(NewsGetScienceSuccessState());
    }
  }


  bool isDark = false;

  void changeAppMode() {
    isDark = !isDark;
    emit(NewsModeChangeState());
  }



  List<dynamic> search = [];

  void getSearch(String value) {
    emit(NewsGetSearchLoadingState());
    search = [];
    DioHelper.getData(
        url: '/v2/everything',
        query: {
          'q' : '$value',
          'apiKey': '25d31f28f03e4f44bd4d5436a59cef6b'
        }
    ).then((value) {
      search = value?.data['articles'];
      emit(NewsGetSearchSuccessState());
    } ).catchError((error) {
      print(error.toString());
      emit(NewsGetSearchErrorState(error));
    });
    
  }

}