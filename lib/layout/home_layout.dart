import 'dart:async';

import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/shared/components/components.dart';
import 'package:flutterapp/shared/cubit/cubit.dart';
import 'package:flutterapp/shared/cubit/states.dart';
import 'package:intl/intl.dart';

class HomeLayout extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if(state is AppInsertDateBaseState){
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(cubit.titles[cubit.currentIndex]),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (cubit.isBottomSheetShown) {
                  // to make sure it's valid form before a user tries to
                  // close the bottomSheet
                  if (formKey.currentState!.validate()) {
                    cubit.insertToDatabase(title: titleController.text, time: timeController.text, date: dateController.text);
                      //                     insertToDatabase(
//                       title: titleController.text,
//                       date: dateController.text,
//                       time: timeController.text,
//                     ).then((value) {
//                       getDataFromDatabase(database).then((value) {
//                         Navigator.pop(context);
// /*                  setState(() {
//                         tasks = value;
//                         isBottomSheetShown = false;
//                         fabIcon = Icons.edit;
//                       });*/
//                       });
//                     }).catchError((error) => print(error.toString()));
//                     // close the BottomSheet
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
                                                  lastDate: DateTime.parse(
                                                      '2021-11-03'))
                                              .then((value) {
                                            if (value != null) {
                                              dateController.text =
                                                  DateFormat.yMMMd()
                                                      .format(value);
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
                      cubit.changeBottomSheetState(ico: Icons.edit, val: false);
                    }
                  });
                  cubit.changeBottomSheetState(ico: Icons.add, val: true);
                }
              },
              child: Icon(cubit.fabIcon),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: AppCubit.get(context).currentIndex,
              onTap: (index) {
                cubit.changeIndex(index);
/*
              setState(() {
                currentIndex = index;
              });
*/
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
              condition: state is! AppGetDateBaseLoadingState,
              builder: (context) => cubit.screens[cubit.currentIndex],
              fallback: (context) => Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }

//Future<String> getName() async => 'Ahmed Ali';

}
