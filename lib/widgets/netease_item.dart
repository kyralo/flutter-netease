import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class NeteaseItem extends StatelessWidget {
  final IconData _itemIconData;
  final String _itemName;
  final double _itemIconSize;

  NeteaseItem(this._itemIconData, this._itemName, this._itemIconSize);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.rpx,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 65.rpx,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 241, 241, 0.8),
              borderRadius: BorderRadius.all(Radius.circular(90.rpx)),
              border: Border.all(width: 0, style: BorderStyle.none),
            ),
            child: Icon(
              _itemIconData,
              color: Color.fromRGBO(254, 58, 59, 1),
              size: _itemIconSize,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 9.rpx, 0, 9.rpx),
            child: SuitText(
              _itemName,
              fontSize: 14.rpx,
              fontWeight: FontWeight.normal,
              color: Color.fromRGBO(66, 66, 66, 1),
            ),
          ),
        ],
      ),
    );
  }
}
