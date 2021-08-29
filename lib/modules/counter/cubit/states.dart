abstract class CounterStates {}

class CounterInitialState extends CounterStates {}

class CounterPlusState extends CounterStates {
  late int counter;
  CounterPlusState(this.counter);
}

class CounterMinusState extends CounterStates {
  late int counter;
  CounterMinusState(this.counter);
}
