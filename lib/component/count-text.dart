import 'package:flutter/material.dart';
import 'package:janken/domain/counter.dart';
import 'package:provider/provider.dart';

class CountText extends StatelessWidget {
  const CountText(this._counter);
  final Counter _counter;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            _counter.value.toString(),
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
