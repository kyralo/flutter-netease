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
    EdgeInsets padding,
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
  _NeteaseLabelCardState createState() => _NeteaseLabelCardState();
}

class _NeteaseLabelCardState extends State<NeteaseLabelCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: widget.padding,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: widget.borderRadius,
        border: Border.all(width: 0, style: BorderStyle.none),
      ),
      child: Column(
        children: <Widget>[
          widget.leftSub != null ? Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(0, 10.rpx, 0, 0),
            child: widget.leftSub,
          ) : Container(),
          Container(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(15.rpx, 15.rpx, 15.rpx, 0.rpx),
              margin: EdgeInsets.fromLTRB(0.rpx, 0.rpx, 0.rpx, 15.rpx),
              alignment: AlignmentDirectional.center,
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: widget.left,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      alignment: AlignmentDirectional.centerEnd,
                      padding: EdgeInsets.fromLTRB(0, 5.rpx, 0, 0),
                      child: widget.right,
                    ),
                  ),
                ],
              ),
            ),
          ),
          widget.center,
        ],
      ),
    );
  }
}
