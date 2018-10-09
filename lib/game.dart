import 'dart:math';
import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' show Colors, TextPainter;
import 'package:flutter_sprite_demo/DragHandler.dart';
import 'package:flutter_sprite_demo/sprite/animated/dog.dart';
import 'package:flutter_sprite_demo/sprite/animated/fridge.dart';
import 'package:flutter_sprite_demo/sprite/animated/pile.dart';
import 'package:flutter_sprite_demo/sprite/animated/trash_bin.dart';
import 'package:flutter_sprite_demo/sprite/food_sprite.dart';

const SPEED = 250.0;

var points = 0;

class MyGame extends BaseGame {
  double creationTimer = 0.0;
  Random rnd = new Random();

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
    if (creationTimer >= 1) {
      creationTimer = 0.0;
      add(new FoodSprite(rnd.nextInt(400).toDouble(), 0.0, 'grillcsirke.png'));
    }
    creationTimer += t;
    super.update(t);
  }

  Drag input(Offset event) {
    for (var component in components) {
      if ((component is FoodSprite)) {
        if (isInTarget(event, component)) {
          component.isTouched = true;
          Drag drag = new DragHandler(_handleDragUpdate, _handleDragEnd);
          return drag;
        }
      }
    }
    return null;
  }

  bool isInTarget(Offset event, FoodSprite target) =>
      event.dx >= target.x &&
      event.dx <= target.x + target.width &&
      event.dy >= target.y &&
      event.dy <= target.y + target.height;

  void _handleDragUpdate(DragUpdateDetails details) {
    components.forEach((component) {
      if (component is FoodSprite) {
        if (component.isTouched) {
          component.y = details.globalPosition.dy;
          component.x = details.globalPosition.dx;
        }
      }
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    components.forEach((component) {
      if (component is FoodSprite) {
        component.isTouched = false;
      }
    });
  }
}
