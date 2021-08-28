import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/modules/counter/cubit/states.dart';

import 'cubit/cubit.dart';

class CounterScreen extends StatelessWidget {

  // calls
  // 1. constructor
  //2. init state
  //3. build
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Text("Counter"),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: Text("MINUS")),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "${CounterCubit.get(context).counter}",
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 50.0),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: Text("PLUS")),
              ],
            ),
          ),
        ),
        listener: (context, state) {
          if(state is CounterPlusState) print("Plus state");
          if(state is CounterMinusState) print("Minus state");
        },
      ),
    );
  }
}

// generic State
