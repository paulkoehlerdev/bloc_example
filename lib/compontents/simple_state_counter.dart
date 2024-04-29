import 'package:bloc_example/simple_state/counter.dart';
import 'package:bloc_example/simple_state_management/simple_state_management.dart';
import 'package:flutter/material.dart';

class SimpleStateCounter extends StatelessWidget {
  const SimpleStateCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleStateBuilder<CounterSimpleState, int>(
      builder: (context, state) => Text(
        'Current SimpleState counter: $state',
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
