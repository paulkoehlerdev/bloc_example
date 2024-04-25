import 'package:bloc_example/compontents/counter.dart';
import 'package:bloc_example/compontents/padded_column.dart';
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
            Counter(),
            Button.increment(),
            Button.decrement(),
          ],
        ),
      ),
    );
  }
}
