import 'package:flutter/material.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class NeteaseSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                child: Icon(IconFont.rehin_paixu),
              )),
          Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.fromLTRB(20.rpx, 10.rpx, 20.rpx, 10.rpx),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(25.rpx),
                ),
                child: Row(
                  textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Container(
                        child: Icon(
                      IconFont.rehin_sousuo,
                      color: Color.fromRGBO(187, 188, 187, 1),
                      size: 20.rpx,
                    )),
                    Container(
                      margin: EdgeInsets.fromLTRB(5.rpx, 0, 0, 0),
                      child: SuitText(
                        '陈奕迅',
                        fontSize: 15.rpx,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(187, 188, 187, 1),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                child: Icon(IconFont.rehin_bottom),
              )),
        ],
      ),
    );
  }
}
