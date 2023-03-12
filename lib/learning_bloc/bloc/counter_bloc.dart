import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterEventIncrement>(onCounterEventIncrement);
    on<CounterEventDecrement>(onCounterEventDecrement);
    on<CounterEventJump>(onCounterEventJump);
  }

  void onCounterEventIncrement(
      CounterEventIncrement event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void onCounterEventDecrement(
      CounterEventDecrement event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }

  void onCounterEventJump(CounterEventJump event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + event.value));
  }
}
