import 'dart:async';

import 'package:flutter/widgets.dart';

abstract class SimpleState<T> {
  T _value;
  final StreamController<T> _streamController;

  SimpleState(value)
      : _value = value,
        _streamController = StreamController.broadcast() {
    _streamController.onListen = () => _streamController.add(_value);
  }

  emit(T value) {
    _value = value;
    _streamController.add(_value);
  }

  T get value => _value;

  Stream<T> get stream => _streamController.stream;
}

class SimpleStateProvider<T extends SimpleState> extends InheritedWidget {
  final T state;

  const SimpleStateProvider({
    super.key,
    required this.state,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static SimpleStateProvider<T>? maybeOf<T extends SimpleState>(
      BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SimpleStateProvider<T>>();
  }

  static SimpleStateProvider<T> of<T extends SimpleState>(
      BuildContext context) {
    final result = maybeOf<T>(context);
    assert(result != null, 'No SimpleStateProvider found in context');
    return result!;
  }
}

extension SimpleStateProviderExtension on BuildContext {
  T simpleState<T extends SimpleState>() =>
      SimpleStateProvider.of<T>(this).state;
}

class SimpleStateBuilder<T extends SimpleState<S>, S> extends StatelessWidget {
  final Widget Function(BuildContext, S?) _builder;

  const SimpleStateBuilder({
    super.key,
    required Widget Function(BuildContext, S?) builder,
  }) : _builder = builder;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: context.simpleState<T>().stream,
      builder: (context, snapshot) {
        return _builder(context, snapshot.data);
      },
    );
  }
}
