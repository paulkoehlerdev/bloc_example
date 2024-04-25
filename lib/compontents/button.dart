import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/counter.dart';

class Button extends StatelessWidget {
  final Function(BuildContext) _action;
  final String _text;

  const Button({
    super.key,
    required Function(BuildContext) action,
    required String text,
  })  : _action = action,
        _text = text;

  const Button.increment({
    super.key,
  })  : _action = _increment,
        _text = 'Increment';

  const Button.decrement({
    super.key,
  })  : _action = _decrement,
        _text = 'Decrement';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _action(context),
      child: Text(_text),
    );
  }
}

VoidCallback _increment(BuildContext context) {
  return () {
    context.read<CounterCubit>().increment();
  };
}

VoidCallback _decrement(BuildContext context) {
  return () {
    context.read<CounterCubit>().decrement();
  };
}
