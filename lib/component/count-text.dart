import 'package:flutter/material.dart';
import 'package:janken/domain/counter.dart';
import 'package:provider/provider.dart';

class CountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<Counter>(context);
    return Container(
      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${_counter.value}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
