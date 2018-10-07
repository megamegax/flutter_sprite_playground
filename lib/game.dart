import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' show Colors, TextPainter;
import 'package:flutter_sprite_demo/sprite/animated/dog.dart';
import 'package:flutter_sprite_demo/sprite/animated/fridge.dart';
import 'package:flutter_sprite_demo/sprite/animated/pile.dart';
import 'package:flutter_sprite_demo/sprite/animated/trash_bin.dart';

const SPEED = 250.0;

var points = 0;

class MyGame extends BaseGame {
  double creationTimer = 0.0;

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    String text = points.toString();
    TextPainter p = Flame.util
        .text(text, color: Colors.white, fontSize: 48.0, fontFamily: 'Halo');
    p.paint(canvas, new Offset(10.0, 10.0));
  }

  @override
  void update(double t) {
    if (creationTimer == 0.0) {
      add(new Dog(300.0, 550.0));
      add(new Fridge(0.0, 550.0));
      add(new Bin(190.0, 550.0));
      add(new Pile(100.0, 550.0));
    }
    creationTimer += t;
    super.update(t);
  }
}
