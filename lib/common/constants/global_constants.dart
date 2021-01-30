import 'dart:ui';
import 'package:flutter/cupertino.dart';

class GlobalConstants {
  // 1.媒体查询信息
  static MediaQueryData mediaQueryData;

  // 2.获取宽度和高度
  // 独立像素(dp)
  static var screenWidth;
  static var screenHeight;
  static double rpx;
  static double px;
  // 百分比
  static double pec;

  // 实际像素(px)
  static final physicalWidth = window.physicalSize.width;
  static final physicalHeight = window.physicalSize.height;

  // 像素密度(dpi)
  static final dpr = window.devicePixelRatio;

  // 3.状态栏的高度
  // 有刘海的屏幕:44 没有刘海的屏幕为20
  static final statusBarHeight = mediaQueryData.padding.top;
  // 有刘海的屏幕:34 没有刘海的屏幕0
  static final bottomHeight = mediaQueryData.padding.bottom;

  static void initialize(BuildContext context, {double standardWidth = 540}) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    rpx = screenWidth / standardWidth;
    px = screenWidth / standardWidth * 2;
    pec = screenWidth / 100;

    print('values: $statusBarHeight');
    print('values: $bottomHeight');
  }

  // 按照像素来设置
  static double setPx(double size) {
    return GlobalConstants.rpx * size * 2;
  }

  // 按照rxp来设置
  static double setRpx(double size) {
    return GlobalConstants.rpx * size;
  }

  // 按照rxp来设置
  static double setPec(double size) {
    return GlobalConstants.pec * size;
  }
}


