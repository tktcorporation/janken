import 'package:flutter/material.dart';
import 'package:janken/component/count-text.dart';
import 'package:janken/component/increment-button.dart';
import 'package:janken/domain/counter.dart';
import 'package:provider/provider.dart';

class BattlePage extends StatelessWidget {
  BattlePage(this._title);
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this._title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CountText(context.select((Counter counter) => counter))
          ],
        ),
      ),
      floatingActionButton: IncrementButton(context.watch<Counter>().increment),
    );
  }
}
