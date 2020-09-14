import 'package:flutter/material.dart';
import 'package:janken/gen/assets.gen.dart';

class JankenRoulette extends StatelessWidget {
  const JankenRoulette(
      this._crossFadeState, this._firstImage, this._secondImage);

  final CrossFadeState _crossFadeState;
  final Image _firstImage;
  final Image _secondImage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedCrossFade(
        firstChild: _firstImage,
        secondChild: _secondImage,
        duration: Duration(seconds: 1),
        crossFadeState: _crossFadeState,
      ),
    );
  }
}
