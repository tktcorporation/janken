import 'package:flutter/material.dart';
import 'package:janken/gen/assets.gen.dart';

typedef void IncrementCallback();

class JankenIncrementButton extends StatelessWidget {
  const JankenIncrementButton(this._increment);

  final IncrementCallback _increment;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this._increment,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.orange,
      child: Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.janken.trianglePng.path),
              fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}