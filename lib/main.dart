import 'package:flame/flame.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sprite_demo/game.dart';

main() async {
  Flame.audio.disableLog();
  Flame.images.loadAll([
    'kutya.png',
    'kuka.png',
    'huto.png',
    'komposzt.png',
    'citrom.png',
    'alma.png',
    'zold_alma.png',
    'grillcsirke.png',
    'hal.png',
    'sajt.png'
  ]);

  var game = new MyGame();

  runApp(game.widget);
  Flame.util.addGestureRecognizer(new ImmediateMultiDragGestureRecognizer()
    ..onStart = (Offset event) => game.input(event));
}
