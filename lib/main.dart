import 'package:flame/flame.dart';
import 'package:flutter/material.dart' show MaterialApp, runApp;
import 'package:flutter/widgets.dart';
import 'package:flutter_sprite_demo/game.dart';

main() async {
  Flame.audio.disableLog();
  Flame.images.loadAll(['kutya.png', 'kuka.png', 'huto.png', 'komposzt.png']);

  var game = new MyGame();
  runApp(game.widget);
}
