import 'package:flame/components/animation_component.dart';

const PILE_SIZE_X = 122.0;
const PILE_SIZE_Y = 128.0;

class Pile extends AnimationComponent {
  static const TIME = 0.75;

  Pile(double x, double y)
      : super.sequenced(PILE_SIZE_X, PILE_SIZE_Y, 'komposzt.png', 8,
            textureWidth: PILE_SIZE_X, textureHeight: PILE_SIZE_Y) {
    this.x = x;
    this.y = y;
    this.animation.stepTime = TIME / 7;
  }
}
