part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterIncrement extends CounterState {
  final int counter;

  CounterIncrement(this.counter);
}

