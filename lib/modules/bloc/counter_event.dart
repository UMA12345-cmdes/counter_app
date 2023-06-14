part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {
   const CounterEvent();

  @override
  List<Object> get props => [];

}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}