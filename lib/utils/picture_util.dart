import 'package:flutter/material.dart';
import 'package:color_thief_flutter/color_thief_flutter.dart';

class PictureUtil {

  /// 取色
  static Future<List<int>> picColorPick(String picUrl) async{
    List<int> rgb;
    await getImageFromProvider(AssetImage(picUrl)).then((image) =>
        getColorFromImage(image).then((color) {
          rgb = color;
        })
    );
    return rgb;
  }
}

