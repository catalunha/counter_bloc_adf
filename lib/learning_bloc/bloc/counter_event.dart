abstract class CounterEvent {}

class CounterEventIncrement extends CounterEvent {}

class CounterEventDecrement extends CounterEvent {}

class CounterEventJump extends CounterEvent {
  final int value;

  CounterEventJump(this.value);
}
