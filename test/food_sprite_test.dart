import 'package:flutter/material.dart';
import 'package:flutter_sprite_demo/game.dart';
import 'package:flutter_sprite_demo/sprite/food_sprite.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_assets_bundle.dart';

void main() async {
  testWidgets('FoodSprite Constructor X must not be null!',
      (WidgetTester tester) async {
    await tester.pumpWidget(new MaterialApp(
      home: new DefaultAssetBundle(
          bundle: new TestAssetBundle(), child: new MyGame().widget),
    ));

    expect(() => new FoodSprite(null, 1.0, 'kutya.png'), throwsArgumentError);
  });

  testWidgets('FoodSprite Constructor Y must not be null!',
      (WidgetTester tester) async {
    await tester.pumpWidget(new MaterialApp(
      home: new DefaultAssetBundle(
          bundle: new TestAssetBundle(), child: new MyGame().widget),
    ));

    expect(() => new FoodSprite(1.0, null, 'kutya.png'), throwsArgumentError);
  });

//  testWidgets('FoodSprite update should move down the sprite',
//      (WidgetTester tester) async {
//    await tester.pumpWidget(new MaterialApp(
//      home: new DefaultAssetBundle(
//          bundle: new TestAssetBundle(), child: new MyGame().widget),
//    ));
//    FoodSprite sprite = new FoodSprite(1.0, 1.0, 'kutya.png');
//    expect(sprite.y > 1, true);
//  });
}
