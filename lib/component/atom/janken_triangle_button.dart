import 'package:flutter/material.dart';
import 'package:janken/gen/assets.gen.dart';

class TriangleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Assets.images.janken.jankenTriangle.svg(
          width: 120,
          height: 120,
          fit: BoxFit.scaleDown,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {},
      ),
    );
  }
}
