import 'package:flutter/material.dart';

@immutable
class CounterState {
  final int counter;

  const CounterState({this.counter = 0});

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CounterState && other.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;
}
