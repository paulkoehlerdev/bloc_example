import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/counter.dart';


class BlocCounter extends StatelessWidget {
  const BlocCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, state) => Text(
        'Current BloC counter: $state',
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
