import 'package:flutter/material.dart';
import 'package:color_thief_flutter/color_thief_flutter.dart';

class PictureUtil {

  /// 取色
  static List<int> picColorPick(String picUrl){
    List<int> res = new List<int>(3);
    getImageFromProvider(AssetImage("lib/assets/image/carousel-1.png")).then((image) =>
        getColorFromImage(image).then((color) {
          res.add(color[0]);
          res.add(color[1]);
          res.add(color[2]);
        })
    );
    return res;
  }
}

