import 'package:flame/components/animation_component.dart';
import 'package:flutter_sprite_demo/assert.dart';

const DOG_SIZE_X = 110.0;
const DOG_SIZE_Y = 128.0;

class Dog extends AnimationComponent {
  static const TIME = 0.75;

  Dog(double x, double y)
      : super.sequenced(DOG_SIZE_X, DOG_SIZE_Y, 'kutya.png', 9,
            textureWidth: DOG_SIZE_X, textureHeight: DOG_SIZE_Y) {
      Assert.notNull(x, 'X must not be null!');
    Assert.notNull(y, 'Y must not be null!');
    this.x = x;
    this.y = y;
    this.animation.stepTime = TIME / 7;
  }
}
