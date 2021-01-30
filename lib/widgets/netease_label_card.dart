import 'package:flutter/material.dart';

import 'package:netease/common/extension/num_fit.dart';

class NeteaseLabelCard extends StatefulWidget {
  final Widget leftSub;
  final Widget left;
  final Widget right;
  final Widget center;

  final double width;
  final double height;
  final EdgeInsets padding;
  final Color color;
  final BorderRadius borderRadius;

  NeteaseLabelCard(
    double height,
    Widget left,
    Widget right,
    Widget center, {
    Widget leftSub,
    double width = double.infinity,
    EdgeInsets padding = const EdgeInsets.fromLTRB(15, 15, 15, 0),
    Color color = Colors.white,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(15)),
  })  : leftSub = leftSub,
        left = left,
        right = right,
        center = center,
        width = width,
        height = height,
        padding = padding,
        color = color,
        borderRadius = borderRadius;

  @override
  _NeteaseLabelCardState createState() => _NeteaseLabelCardState(
        left: left,
        right: right,
        center: center,
        height: height,
        leftSub: leftSub,
        width: width,
        padding: padding,
        color: color,
        borderRadius: borderRadius,
      );
}

class _NeteaseLabelCardState extends State<NeteaseLabelCard> {
  Widget _leftSub;
  Widget _left;
  Widget _right;
  Widget _center;

  double _width;
  double _height;
  EdgeInsets _padding;
  Color _color;
  BorderRadius _borderRadius;

  _NeteaseLabelCardState({
    @required Widget leftSub,
    @required Widget left,
    @required Widget right,
    @required Widget center,
    @required double width,
    @required double height,
    @required Color color,
    @required EdgeInsets padding,
    @required BorderRadius borderRadius,
  })  : _leftSub = leftSub,
        _left = left,
        _right = right,
        _center = center,
        _width = width,
        _height = height,
        _padding = padding,
        _color = color,
        _borderRadius = borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      padding: _padding,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: _borderRadius,
        border: Border.all(width: 0, style: BorderStyle.none),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(0, 10.rpx, 0, 0),
            child: _leftSub,
          ),
          Container(
            child: Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: _left,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      alignment: AlignmentDirectional.centerEnd,
                      padding: EdgeInsets.fromLTRB(0, 5.rpx, 0, 0),
                      child: _right,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _center,
        ],
      ),
    );
  }
}
