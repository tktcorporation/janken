import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:janken/component/molecule/animation/janken_roulette.dart';
import 'package:janken/gen/assets.gen.dart';

class Roulette extends StatefulWidget {
  Roulette({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RouletteState createState() => _RouletteState();
}

class _RouletteState extends State<Roulette> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;
  Timer _crossFadeTimer;

  @override
  Widget build(BuildContext context) {
    return JankenRoulette(
        _crossFadeState,
        Assets.images.janken.chokiPng.image(),
        Assets.images.janken.paPng.image());
  }

  @override
  void dispose() {
    if (_crossFadeTimer != null) {
      _crossFadeTimer.cancel();
      _crossFadeTimer = null;
    }
    super.dispose();
  }

  @override
  void initState() {
    _crossFadeTimer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        if (_crossFadeState == CrossFadeState.showFirst) {
          _crossFadeState = CrossFadeState.showSecond;
        } else {
          _crossFadeState = CrossFadeState.showFirst;
        }
      });
    });

    super.initState();
  }
}
