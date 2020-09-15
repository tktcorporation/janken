import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:janken/component/molecule/animation/animation_controller.dart';
import 'package:janken/component/molecule/button/janken_increment_button.dart';
import 'package:janken/component/molecule/count_text.dart';
import 'package:janken/controller/counter_controller.dart';
import 'package:janken/domain/counter.dart';

class BattlePage extends StatelessWidget {
  BattlePage(this._title);
  final String _title;
  final counterProvider = ChangeNotifierProvider<CounterController>(
      (_) => CounterController(Counter()));

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
              Consumer(
                builder: (_, watch, __) =>
                    CountText(watch(counterProvider).getCount()),
              ),
              Roulette(),
            ],
          ),
        ),
        floatingActionButton:
            JankenIncrementButton(context.read(counterProvider).increment));
  }
}
