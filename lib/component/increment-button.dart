import 'package:flutter/material.dart';

typedef void IncrementCallback();

class IncrementButton extends StatelessWidget {
  const IncrementButton(this._increment);

  final IncrementCallback _increment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.orange),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[
          FloatingActionButton(
            onPressed: this._increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
