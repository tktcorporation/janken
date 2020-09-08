import 'package:flutter/material.dart';
import 'package:janken/component/molecule/count-text.dart';
import 'package:janken/component/molecule/increment-button.dart';
import 'package:janken/controller/counterController.dart';
import 'package:janken/domain/counter.dart';
import 'package:provider/provider.dart';

class BattlePage extends StatelessWidget {
  BattlePage(this._title);
  final String _title;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterController>(
      create: (_) => CounterController(Counter()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(this._title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<CounterController>(
                builder: (ctx, counterController, _) => CountText(
                  counterController.getCount(),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Consumer<CounterController>(
          builder: (ctx, counterController, _) =>
              IncrementButton(counterController.increment),
        ),
      ),
    );
  }
}
