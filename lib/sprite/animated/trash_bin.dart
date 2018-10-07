import 'package:flame/components/animation_component.dart';

const TRASHBIN_SIZE_X = 128.0;
const TRASHBIN_SIZE_Y = 128.0;

class Bin extends AnimationComponent {
  static const TIME = 0.75;

  Bin(double x, double y)
      : super.sequenced(TRASHBIN_SIZE_X, TRASHBIN_SIZE_Y, 'kuka.png', 7,
            textureWidth: TRASHBIN_SIZE_X, textureHeight: TRASHBIN_SIZE_Y) {
    this.x = x;
    this.y = y;
    this.animation.stepTime = TIME / 7;
  }
}
