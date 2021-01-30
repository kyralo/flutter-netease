import 'dart:io';
import 'package:flutter/cupertino.dart';

class ScrollBehaviorHandler extends ScrollBehavior{
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    if(Platform.isAndroid || Platform.isFuchsia || Platform.isIOS){
      return child;
    }else{
      return super.buildViewportChrome(context,child,axisDirection);
    }
  }
}