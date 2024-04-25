import 'package:flutter/cupertino.dart';

class PaddedColumn extends StatelessWidget {
  final List<Widget> _children;
  final EdgeInsets _padding;
  final MainAxisSize _mainAxisSize;

  const PaddedColumn({
    super.key,
    required List<Widget> children,
    required EdgeInsets padding,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  })  : _children = children,
        _padding = padding,
        _mainAxisSize = mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: _mainAxisSize,
      children: _children
          .map(
            (e) => Padding(
              padding: _padding,
              child: e,
            ),
          )
          .toList(),
    );
  }
}
