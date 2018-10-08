import 'package:flame/components/component.dart';
import 'package:flutter_sprite_demo/assert.dart';

const SPEED = 250.0;

class FoodSprite extends SpriteComponent {
  bool isTouched = false;

  FoodSprite(double x, double y, String imagePath)
      : super.square(64.0, imagePath) {
    Assert.notNull(x, 'Y must not be null!');
    Assert.notNull(y, 'Y must not be null!');
    this.x = x;
    this.y = y;
  }

  @override
  void update(double t) {
    if (!isTouched) {
      y += t * SPEED;
    }
  }
}
