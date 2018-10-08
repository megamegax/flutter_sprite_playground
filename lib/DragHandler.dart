import 'package:flutter/gestures.dart';

class DragHandler extends Drag {
  final GestureDragUpdateCallback onUpdate;
  final GestureDragEndCallback onEnd;

  DragHandler(this.onUpdate, this.onEnd);

  @override
  void update(DragUpdateDetails details) {
    onUpdate(details);
  }

  @override
  void end(DragEndDetails details) {
    onEnd(details);
  }

  @override
  void cancel() {
    print("Drag Canceled");
  }
}
