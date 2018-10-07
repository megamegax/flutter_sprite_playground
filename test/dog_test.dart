import 'package:flutter/material.dart';
import 'package:flutter_sprite_demo/game.dart';
import 'package:flutter_sprite_demo/sprite/animated/dog.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_assets_bundle.dart';

void main() async {
  testWidgets('Dog Constructor X must not be null!',
      (WidgetTester tester) async {
    await tester.pumpWidget(new MaterialApp(
      home: new DefaultAssetBundle(
          bundle: new TestAssetBundle(), child: new MyGame().widget),
    ));

    expect(() => new Dog(null, 1.0), throwsArgumentError);
  });

  testWidgets('Dog Constructor Y must not be null!',
      (WidgetTester tester) async {
    await tester.pumpWidget(new MaterialApp(
      home: new DefaultAssetBundle(
          bundle: new TestAssetBundle(), child: new MyGame().widget),
    ));

    expect(() => new Dog(1.0, null), throwsArgumentError);
  });
}
