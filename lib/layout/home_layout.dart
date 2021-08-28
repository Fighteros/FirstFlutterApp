import 'dart:async';

import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/modules/archived_tasks/archived_tasks.dart';
import 'package:flutterapp/modules/done_tasks/done_tasks.dart';
import 'package:flutterapp/modules/new_tasks/new_tasks.dart';
import 'package:flutterapp/shared/components/components.dart';
import 'package:flutterapp/shared/components/constants.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.add;

  late Database database;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

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

  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(titles[currentIndex]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottomSheetShown) {
            // to make sure it's valid form before a user tries to
            // close the bottomSheet
            if (formKey.currentState!.validate()) {
              insertToDatabase(
                title: titleController.text,
                date: dateController.text,
                time: timeController.text,
              ).then((value) {
                if (value is FutureOr) {
                  Navigator.pop(context);
                  isBottomSheetShown = false;
                  setState(() {
                    fabIcon = Icons.edit;
                  });
                }
              }).catchError((error) => print(error.toString()));
              // close the BottomSheet

            }
          } else {
            scaffoldKey.currentState
                ?.showBottomSheet(
                    (context) => Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(20.0),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                defaultFormField(
                                  controller: titleController,
                                  type: TextInputType.text,
                                  label: 'Task Title',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Title mustn\'t be empty';
                                    }
                                    return null;
                                  },
                                  prefixIcon: Icons.title,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                defaultFormField(
                                  controller: timeController,
                                  type: TextInputType.datetime,
                                  onTap: () {
                                    showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.now())
                                        .then((value) {
                                      if (value != null) {
                                        timeController.text =
                                            value.format(context);
                                        print(value.format(context));
                                      }
                                    });
                                  },
                                  label: 'Task Time',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'time mustn\'t be empty';
                                    }
                                    return null;
                                  },
                                  prefixIcon: Icons.watch_later_outlined,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                defaultFormField(
                                  controller: dateController,
                                  type: TextInputType.datetime,
                                  onTap: () {
                                    showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate:
                                                DateTime.parse('2021-11-03'))
                                        .then((value) {
                                      if (value != null) {
                                        dateController.text =
                                            DateFormat.yMMMd().format(value);
                                      }
                                    });
                                  },
                                  label: 'Task Date',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'date mustn\'t be empty';
                                    }
                                    return null;
                                  },
                                  prefixIcon: Icons.calendar_today,
                                ),
                              ],
                            ),
                          ),
                        ),
                    elevation: 15.0)
                .closed
                .then((value) {
              if (value is FutureOr) {
                isBottomSheetShown = false;
                setState(() {
                  fabIcon = Icons.edit;
                });
              }
            });
            isBottomSheetShown = true;
            setState(() {
              fabIcon = Icons.add;
            });
          }
        },
        child: Icon(fabIcon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
        ],
      ),
      body: BuildCondition(
        condition: tasks.length > 0,
        builder: (context) => screens[currentIndex],
        fallback: (context) => Center(child: CircularProgressIndicator()),
      ),
    );
  }

  //Future<String> getName() async => 'Ahmed Ali';

  void createDatabase() async {
    database = await openDatabase(
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
        getDataFromDatabase(database).then((value) {
          setState(() {
            tasks = value;
          });
        });
        print('database open!');
      },
    );
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
