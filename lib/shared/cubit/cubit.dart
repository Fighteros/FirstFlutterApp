import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/modules/archived_tasks/archived_tasks.dart';
import 'package:flutterapp/modules/done_tasks/done_tasks.dart';
import 'package:flutterapp/modules/new_tasks/new_tasks.dart';
import 'package:flutterapp/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates> {

  int currentIndex = 0;
  late Database database;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  AppCubit(): super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  void changeIndex(int index) {
     currentIndex = index;
     emit(AppChangeBottomNavBarState());
  }

  void createDatabase()  {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('database created!');
        database
            .execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date, TEXT, time TEXT, status TEXT )')
            .then((value) => {print('table created!')})
            .catchError((error) {
          print('error on creating table ${error.toString()}');
        });
      },
      onOpen: (database) {
//         getDataFromDatabase(database).then((value) {
// /*
//           setState(() {
//             tasks = value;
//           });
// */
//         });
        print('database open!');
      },
    ).then((value){
      database = value;
      emit(AppCreateDateBaseState());
    });
  }

  Future insertToDatabase({
    required String title,
    required String time,
    required String date,
  }) async {
    return await database.transaction((txn) => txn
        .rawInsert(
        'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$date", "$time", "new")')
        .then((value) {
      print('$value Inserted Successfully');
    }).catchError((error) {
      print('error is ${error.toString()}');
    }));
  }

  Future<List<Map>> getDataFromDatabase(database) async {
    return await database.rawQuery('SELECT * FROM tasks');
  }

}