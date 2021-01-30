import 'package:flutter/material.dart';
import 'package:color_thief_flutter/color_thief_flutter.dart';

import 'package:netease/common/extension/num_fit.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int r = 255;
  int g = 255;
  int b = 255;
  void getImageColor(){
    getImageFromProvider(AssetImage("lib/assets/image/carousel-1.png")).then((image) =>
        getColorFromImage(image).then((color) {
          setState(() {
            r = color[0];
            g = color[1];
            b = color[2];
          });
        })
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 100.rpx,
        height: 100.rpx,
        decoration: BoxDecoration(
            color: Color.fromRGBO(r, g, b, 1),
        ),
      ),
      onTapDown: (e) => this.getImageColor(),
    );
  }
}