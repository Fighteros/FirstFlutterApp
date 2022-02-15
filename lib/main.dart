import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/layout/news-app/cubit/states.dart';
import 'package:flutterapp/shared/bloc_observer.dart';
import 'package:flutterapp/shared/cubit/cubit.dart';
import 'package:flutterapp/shared/cubit/states.dart';
import 'package:flutterapp/shared/network/local/cache_helper.dart';
import 'package:flutterapp/shared/network/remote/dio_helper.dart';
import 'package:hexcolor/hexcolor.dart';

import 'layout/news-app/cubit/cubit.dart';
import 'layout/news-app/news-app.dart';
import 'layout/todo-app/todo_layout.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  bool? isDark = CacheHelper.getBoolean(key: 'isDark');
  runApp(MyApp(isDark));
}

// two main widgets {Stateless - Stateful}
// class MyApp

class MyApp extends StatelessWidget {
  final bool? isDark;

  MyApp(this.isDark);

  @override
  // manager (which inside it is seen outside it isn't seen)
  Widget build(BuildContext context) {
    // must start my project with MaterialApp
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => NewsCubit()..getBusiness()),
          BlocProvider(create: (context) => AppCubit()..changeAppMode(
            fromShared: isDark,
          ))
        ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) => MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.deepPurple,
              floatingActionButtonTheme:
              FloatingActionButtonThemeData(
                  backgroundColor: Colors.deepPurple
              ),
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: AppBarTheme(
                titleSpacing: 20.0 ,
                  iconTheme: IconThemeData(color: Colors.black),
                  titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.white,
                    statusBarIconBrightness: Brightness.dark,
                  ),
                  backgroundColor: Colors.white,
                  elevation: 0.0),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.deepPurple,
                  unselectedItemColor: Colors.grey,
                  elevation: 20.0,
                  backgroundColor: Colors.white
              ),
              textTheme: TextTheme(
                  bodyText1: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black))),
          themeMode: AppCubit.get(context).isDark? ThemeMode.dark: ThemeMode.light ,
          darkTheme: ThemeData(
              scaffoldBackgroundColor: HexColor('333739'),
              primarySwatch: Colors.deepPurple,
              backgroundColor: HexColor('333739'),
              floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.deepPurple),
              appBarTheme: AppBarTheme(
                  titleSpacing: 20.0 ,
                  iconTheme: IconThemeData(color: Colors.white),
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: HexColor('333739'),
                    statusBarIconBrightness: Brightness.light,
                  ),
                  backgroundColor: HexColor('333739'),
                  elevation: 0.0),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.deepPurple,
                unselectedItemColor: Colors.grey,
                elevation: 20.0,
                backgroundColor: HexColor('333739'),
              ),
              textTheme: TextTheme(
                  bodyText1: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white))),
          debugShowCheckedModeBanner: false,
          home: NewsLayout(),
        ) ,
      ),
    );
  }
}
