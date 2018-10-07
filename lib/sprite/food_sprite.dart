import 'package:flame/components/component.dart';
import 'package:flutter_sprite_demo/assert.dart';

class FoodSprite extends SpriteComponent {
  FoodSprite(double x, double y) : super.square(128.0, 'kutya.png') {
    Assert.notNull(x, 'Y must not be null!');
    Assert.notNull(y, 'Y must not be null!');
    this.x = x;
    this.y = y;
  }
}
