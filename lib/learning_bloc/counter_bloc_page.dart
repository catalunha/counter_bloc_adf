import 'package:counter_bloc_adf/learning_bloc/bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';
import 'bloc/counter_state.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const CounterBlocView(),
    );
  }
}

class CounterBlocView extends StatelessWidget {
  const CounterBlocView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text('Counter is ${state.counter}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterEventDecrement());
                  },
                  icon: const Icon(Icons.exposure_minus_1),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterEventIncrement());
                  },
                  icon: const Icon(Icons.exposure_plus_1),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterEventJump(2));
                  },
                  icon: const Icon(Icons.exposure_plus_1),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
