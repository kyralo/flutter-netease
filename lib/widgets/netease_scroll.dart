import 'package:flutter/material.dart';
import 'package:netease/handler/scroll_behavior_handler.dart';

class NeteaseScroll extends StatelessWidget {
  Widget _child;
  Axis _direction;

  NeteaseScroll({
    Axis direction = Axis.vertical,
    Widget child,
  }) {
    this._child = child;
    this._direction = direction;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScrollConfiguration(
        behavior: ScrollBehaviorHandler(),
        child: SingleChildScrollView(
          scrollDirection: _direction,
          child: _child,
        ),
      ),
    );
  }
}
