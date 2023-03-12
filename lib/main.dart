import 'package:flutter/material.dart';

import 'learning_bloc/counter_bloc_page.dart';
import 'home_page.dart';
import 'learning_cubit/counter_cubit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        // '/bloc': (_) => BlocProvider(
        //       create: (context) => CounterBloc(),
        //       child: const CounterBlocPage(),
        //     ),
        '/bloc': (_) => const CounterBlocPage(),
        '/cubit': (_) => const CounterCubitPage(),
      },
    );
  }
}
