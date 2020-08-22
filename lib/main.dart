import 'package:flutter/material.dart';
import 'package:janken/app/janken.dart';
import 'package:janken/app/storyboard.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  runApp(MyApp());
}

MaterialApp material = MaterialApp(
  home: Storyboard([
    ButtonsListStory(),
  ]),
);
