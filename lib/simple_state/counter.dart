import '../simple_state_management/simple_state_management.dart';

class CounterSimpleState extends SimpleState<int> {
  CounterSimpleState() : super(0);

  void increment() => emit(value + 1);
  void decrement() => emit(value - 1);
}