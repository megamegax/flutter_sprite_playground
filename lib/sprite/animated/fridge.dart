import 'package:flame/components/animation_component.dart';

const FRIDGE_SIZE_X = 128.0;
const FRIDGE_SIZE_Y = 128.0;

class Fridge extends AnimationComponent {
  static const TIME = 0.75;

  Fridge(double x, double y)
      : super.sequenced(FRIDGE_SIZE_X, FRIDGE_SIZE_Y, 'huto.png', 11,
            textureWidth: FRIDGE_SIZE_X, textureHeight: FRIDGE_SIZE_Y) {
    this.x = x;
    this.y = y;
    this.animation.stepTime = TIME / 7;
  }
}
