import 'package:bloc_example/compontents/bloc_counter.dart';
import 'package:bloc_example/compontents/padded_column.dart';
import 'package:bloc_example/compontents/simple_state_counter.dart';
import 'package:flutter/material.dart';

import '../compontents/button.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: PaddedColumn(
          padding: EdgeInsets.all(8),
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            BlocCounter(),
            SimpleStateCounter(),
            Button.increment(),
            Button.decrement(),
          ],
        ),
      ),
    );
  }
}
