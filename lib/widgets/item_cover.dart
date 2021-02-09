import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netease/common/extension/num_fit.dart';
import 'package:netease/common/style/icon_font.dart';

class ItemCover extends StatelessWidget {

  String url;
  double width;
  double height;
  ItemCover(String url, double width, double height) {
    this.url = url;
    this.width = width;
    this.height = height;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0),
              borderRadius: BorderRadius.all(Radius.circular(13)),
              border: Border.all(width: 0, style: BorderStyle.none),
            ),
            child: Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(13)),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(url, fit: BoxFit.fill),
            ),
          ),
          Container(
            child: Icon(
              IconFont.rehin_bofang6,
              color: Color.fromRGBO(255, 255, 255, 0.8),
              size: 35.rpx,
            ),
          ),
        ],
      ),
    );
  }
}
