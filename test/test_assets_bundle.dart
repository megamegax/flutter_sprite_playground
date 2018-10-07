import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/services.dart';

class TestAssetBundle extends CachingAssetBundle {
  @override
  Future<ByteData> load(String key) async {
    if (key == 'resources/kutya.png')
      return new ByteData.view(
          new Uint8List.fromList(utf8.encode('Hello World!')).buffer);
    return null;
  }
}
