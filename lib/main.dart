import 'package:bloc_example/pages/index.dart';
import 'package:bloc_example/simple_state/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/counter.dart';
import 'simple_state_management/simple_state_management.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({super.key});

  final CounterSimpleState _counterState = CounterSimpleState();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SimpleStateProvider(
        state: _counterState,
        child: BlocProvider(
          create: (context) => CounterCubit(),
          child: const IndexPage()
        ),
      ),
    );
  }
}
