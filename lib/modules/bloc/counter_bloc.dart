import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;
  CounterBloc({required this.count}) : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        count++;
        emit(CounterIncrement(count));
      }
      if (event is DecrementEvent) {
        if (count > 0) {
          count--;

          emit(CounterIncrement(count));
        }
      }
    });
  }
}
