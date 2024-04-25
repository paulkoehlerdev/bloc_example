---
theme: gaia
_class: lead
backgroundColor: #fff
marp: true
---

![bg left:40% 80%](https://raw.githubusercontent.com/felangel/bloc/master/assets/logos/flutter_bloc.png)

# Bloc (`flutter_bloc`)

Presented by Paul Köhler

---

# What is `bloc`

![height:300](https://bloclibrary.dev/_astro/cubit_architecture_full.CT5Fr9vK_ZU8vQ0.webp)

---

# Why use `bloc`

- State management is hard.
- `bloc` is simple.

---

# But how?

![height:300](https://bloclibrary.dev/_astro/cubit_architecture_full.CT5Fr9vK_ZU8vQ0.webp)

- What is this `cubit` and how do I create one?

---

# How to define a `cubit`

```dart
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
```

---

# Using a `cubit`: Initialization

```dart
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const IndexPage()
      ),
      // ...
    );
  }
}
```

---

# Using a `cubit`: Getting the value

```dart
// ...
class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, state) => Text('Current counter: $state'),
    );
  }
}
// ...
```

---

# Using a `cubit`: Setting the value

```dart
// ...
void _increment(BuildContext context) => context.read<CounterCubit>().increment();
// ...
```

---

# Summary

- `bloc` is very useful and simple for state management.

---

# Live demo

---

# Questions?

---

# References

The full source code is available on Github: [https://github.com/paulkoehlerdev/bloc_example](https://github.com/paulkoehlerdev/bloc_example)

![width:200px](img/qrcode.png)

The slides where created with [Marp](https://marp.app/)