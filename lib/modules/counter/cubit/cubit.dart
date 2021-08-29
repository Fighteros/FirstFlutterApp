import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/modules/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  // gets a new object with updated data
  // static so i can call it on any instance field and returns to me
  // an  object providing the context of where i am
  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 1;

  void minus() {
    counter--;
    emit(CounterMinusState(counter));
  }

  void reset() {
    emit(CounterInitialState());
    counter = 0;
  }

  void plus() {
    counter++;
    emit(CounterPlusState(counter));
  }
}