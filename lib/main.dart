import 'package:flutter/material.dart';
import 'package:janken/app/storyboard.dart';
import 'package:janken/template/battle/battle.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  runApp(MyApp());
}

MaterialApp material = MaterialApp(
    home: Storyboard([
  ButtonsListStory(),
]));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '絶対に 1/3 の確率で勝つ',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.orange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'じゃんけん'),
    );
  }
}
