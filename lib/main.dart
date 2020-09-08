import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:janken/app/janken.dart';
import 'package:janken/app/storyboard.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp()
    ),
  );
}

MaterialApp material = MaterialApp(
  home: Storyboard([
    ButtonsListStory(),
  ]),
);
