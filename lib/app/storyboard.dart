import 'package:flutter/material.dart';
import 'package:janken/component/increment-button.dart';
import 'package:storyboard/storyboard.dart';

class ButtonsListStory extends Story {
  function() {}

  @override
  List<Widget> get storyContent {
    return [IncrementButton(function)];
  }
}
